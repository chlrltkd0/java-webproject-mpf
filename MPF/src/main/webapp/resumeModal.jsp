<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<div class="portfolio-modal mfp-hide" id="resumeModal">
	<input type="hidden" id="portfolioId" value="" />
	<div class="portfolio-modal-dialog bg-white">
		<a class="close-button d-none d-md-block portfolio-modal-dismiss"
			href="#"> <i class="fa fa-3x fa-times"></i>
		</a>
		<div class="container text-center">
			<table border cellpadding="3" cellspacing="0" bordercolordark="white" bordercolorlight="black">
				<tr>
					<td align="center" rowspan="4" colspan="3">
						<p align="center"><font size="2"><b>사진</b></font>
					</td>
					<td width="513" height="50" align="center" colspan="5">
						<p><font size="5"><b>이 &nbsp;&nbsp;력 &nbsp;서 (RESUME)</b></font>
					</td>
				</tr>
				<tr>
					<td width="94" align="center" rowspan="2"><p><font size="2"> <b>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</b></font></td>
					<td width="249" colspan="2"><p align="left"><div contentEditable="true">${resume.krName}</div></td>
					<td width="152" colspan="2"><p align="center"><font size="2"><b>성별</b></font></td>
				</tr>
				<tr>
					<td width="249" colspan="2"><p align="left"><div contentEditable="true">${resume.enName}</div></td>
					<td width="152" colspan="2"><p align="center">${resume.sex}</td>
				</tr>
				<tr>
					<td width="94" height="25"><p align="center"><font size="2"><b>생년월일 </b></font></td>
					<td width="249" height="25" colspan="2"><p align="left"><font size="2">${resume.birth}</font></td>
					<td width="152" height="25" colspan="2"><p align="center"><font size="2"><b>전 &nbsp;화 &nbsp;번 &nbsp;호 </b></font></td>
				</tr>
				<tr>
					<td width="81" height="25" colspan="3"><p align="center"><font size="2"><b>현 주 소</b></font></td>
					<td width="352" height="25" colspan="3"><p align="center">${resume.address}</td>
					<td width="152" height="25" colspan="2"><p align="center">${resume.phone}</td>
				</tr>
				<tr>
					<td width="81" height="12" colspan="3"><p align="center"><font size="2"><b>학력 및 경력 </b></font></td>
					<td width="352" height="12" colspan="3"><p align="center"><font size="2"><b>학력 및 경력사항</b></font></td>
					<td width="152" height="12" colspan="2"><p align="center"><font size="2"><b>발령청</b></font></td>
				</tr>
				<tr>
					<td width="164" height="10" colspan="3"><p align="center">123</td>
					<td width="352" height="10" colspan="3"><p align="left">7</td>
					<td width="152" height="10" colspan="2"><p align="left">8</td>
				</tr>
				<tr>
					<td width="600" height="10" colspan="10"><p align="center">9</td>
				</tr>
				<tr>
					<td width="81" height="34" colspan="3"><p align="center"><font size="2"><b>자격증 기간 </b></font></td>
					<td width="352" height="34" colspan="3"><p align="center"><font size="2"><b>자격증</b></font></td>
					<td width="152" height="34" colspan="2"><p align="center"><font size="2"><b>자격 여부</b></font></td>
				</tr>
				<tr>
					<td width="164" height="25" colspan="3"><p align="center">10</td>
					<td width="352" height="25" colspan="3"><p align="left">11</td>
					<td width="152" height="25" colspan="2"><p align="left">12</td>
				</tr>
				<tr>
					<td width="634" height="300" valign="bottom" colspan="8">
						<p align="left"><font size="2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 위와
								같이 틀림없음</font>
						</p>
						<p align="left"><font size="2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1999 년
								11월 9일</font>
						</p>
						<p align="left"><fontsize="2">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
							<font size="2"><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;홍&nbsp;길 &nbsp;동 </b></font>
							<font size="2">&nbsp;(인)<br> &nbsp;
							</font>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</html>