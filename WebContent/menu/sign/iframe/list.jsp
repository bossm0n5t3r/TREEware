<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/import.jsp" %>
<div class="buttonmenu" align="center" style="margin:5px 0 5px 0">
	<div class="row" style="width:100%">
		<div style="width:60%;text-align:left;padding:10px 0">
			<p style="color:#007bff">전체목록 [123개]</p>
		</div>
		<div style="width:40%;text-align:right">
			<button class="simplebtn1">선택삭제</button>
			<button class="simplebtn1">전체삭제</button>
		</div>
	</div>
</div>
<table class="table-hover" id="listtable" style="width:100%;font-size:100%">
	<thead>
		<tr style="border-bottom:1px #ddd solid">
			<th width="5%">
				<div class="form-check" >
					<label class="form-check-label">
						<input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
						<span class="form-check-sign"></span>
					</label>
				</div>
			</th>
			<th width="55%">서류제목</th>
			<th width="10%">담당자</th>
			<th width="10%">제출일</th>
			<th width="10%">처리현황</th>
			<th width="10%">수정·삭제</th>
		</tr>
	</thead>
	<tbody>
		<% for(int i=0; i<10 ; i++){ %>
		<tr>
			<td>
				<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input task-select" type="checkbox">
						<span class="form-check-sign"></span>
					</label>
				</div>
			</td>
			<td>9월 회식비용 영수증</td>
			<td>손예진</td>
			<td>18.10.02</td>
			<td>처리보류</td>
			<td class="td-actions text-left">
				<div class="form-button-action">
					<button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link btn-simple-primary">
						<i class="la la-edit"></i>
					</button>
					<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
						<i class="la la-times"></i>
					</button>
				</div>
			</td>
		</tr>
		<%} %>
	</tbody>
</table>