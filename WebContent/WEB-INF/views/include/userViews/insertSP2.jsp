<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form>
  <div class="form-row">
    <div style="display: flex;"> 
    				<div class="form-group col-md-6">
				      <label for="inputEmail4">Mã sản phẩm</label>
				      <input type="text" class="form-control" id="inputEmail4" placeholder="Mã sản phẩm">    
				    </div>
				    <div class="form-group col-md-6" style="margin-left:10px"> 
				      <label for="inputPassword4">Tên SP</label>
				      <input type="text" class="form-control" id="inputPassword4" placeholder="Tên sản phẩm">
				    </div>
    </div>
  </div> 
	  <div class="form-row" style="display: flex;">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4">Hãng SX</label>
		      <input type="text" class="form-control" id="inputEmail4" placeholder="Hãng sản xuất">
		    </div>
		    <div class="form-group col-md-6 " style="margin-left:10px">
		      <label for="inputPassword4">Giá</label>
		      <input type="text" class="form-control" id="inputPassword4" placeholder="VNĐ">
		    </div>
  </div>
	  <div class="form-row" style="display: flex;">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4">RAM</label>
		      <input type="text" class="form-control" id="inputEmail4" placeholder="RAM">
		    </div>
		    <div class="form-group col-md-6 " style="margin-left:10px"> 
		      <label for="inputPassword4">Chip</label>
		      <input type="text" class="form-control" id="inputPassword4" placeholder="Chip">
		    </div>
		</div>
	  <div class="form-row" style="display: flex;">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Ổ cứng</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="Ổ cứng">
    </div>
    <div class="form-group col-md-6" style="margin-left:10px">
      <label for="inputPassword4">Trạng thái</label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="Tình trạng">
    </div>
  </div>
	
  <div class="form-group">
    <label for="exampleFormControlFile1">Ảnh</label><br/>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" style="margin: 10px 0px"> 
  </div>

  <button type="submit" class="btn btn-primary">Sign in</button>
</form>