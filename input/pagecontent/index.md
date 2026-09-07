
### 專案介紹
<div  style="padding-left: 10px;"> 
<p>全國性預防接種資訊登錄與上傳實作指引(TWNIIS IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/">FHIR R4.0.1</a>之標準基礎上，繼承TW Core IG V 0.3.2 (2024-12-12)，進一步定義適用於「全國性預防接種資訊登錄與上傳實作指引(以下簡稱本專案)」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>
</div>

### 專案背景
<div  style="padding-left: 10px;"> 
<p>衛生福利部疾病管制署(Centers for Disease Control，CDC，以下簡稱本署)推動運用API介接作業模式，進行全國預防接種資訊相關資料之自動交換與資料核對修正作業，透過API介接，將全國預防接種資訊登錄與上傳至本署，強化資料除錯管控效能，提升資料正確完整性，降低醫療院所人工作業負擔，完善全國預防接種數位化作業管理及服務品質與效能。</p>
</div>

### 專案範圍

#### 架構圖

全國預防接種資訊之檢驗結果登錄與上傳

<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="API-structure.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>


#### API作業流程
院所端呼叫 UpldExamRslt 服務，上傳麻疹/德國麻疹或孕婦 B 型肝炎檢驗結果並登錄至 NIIS 系統。

1. 合約院所呼叫 API: UpldExamRslt，以<a href="StructureDefinition-bundle-request-reporting-niis.html">合約院所上傳檢驗報告（Bundle Request Reporting NIIS）</a>格式，多筆或單筆新增、修改、刪除麻疹/德國麻疹或孕婦 B 型肝炎檢驗結果。
2. NIIS 系統檢核資料正確性；若檢核通過，回覆 HTTP 200 OK，並以<a href="StructureDefinition-bundle-response-niis.html">CDC回覆合約院所上傳/修改/刪除（Bundle Response NIIS）</a>格式回覆新增、修改、刪除檢驗結果成功訊息。
3. NIIS 系統檢核資料正確性；若檢核未通過，回覆 HTTP 400 Bad Request，並以<a href="StructureDefinition-operationoutcome-niis.html">系統回應訊息（OperationOutcome NIIS）</a>格式回覆錯誤訊息。
4. 合約院所可依照 NIIS 系統回覆訊息進行資料修正。

<!--<div style="justify-content: center;display: flex;width: 100%;">{% include index-niis.svg %}</div>-->
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="API-flow.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 60%;"/>
</div>
<br>


### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="https://twNIIS.cdc.gov.tw/twNIIS/history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="https://twNIIS.cdc.gov.tw/twNIIS/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid" style="width:100%">
<thead>
<tr class="header">
<th style="width:10%">角色</th>
<th style="width:10%">姓名</th>
<th>機構</th>
</tr>
</thead>
<tbody>
<tr>
<td>作者-IG</td>
<td>李奇安</td>
<td rowspan="2" style="text-align: left; vertical-align: middle;">凌網資訊</td>
</tr>
<tr>
<td>貢獻者-IG</td>
<td>曾鈺珈</td>
</tr>
</tbody>
</table>
