<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html"%>
<%@taglib prefix="logic" uri="http://jakarta.apache.org/struts/tags-logic"%>
<%@taglib prefix="bean" uri="http://jakarta.apache.org/struts/tags-bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" %>
<html>

<head>
    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <!-- FooTable -->
    <link href="css/plugins/footable/footable.core.css" rel="stylesheet">
    <!-- Data Table -->
	<link href="css/jquery.dataTables.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div id="page-heading-id" class="col-lg-10">
            <h2>Customers Information</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="home">Home</a>
                </li>
                <li class="active">
                    <strong>Customer</strong>
                </li>
            </ol>
        </div>
        <!-- add customer button -->
        <div id="add_cus_btn" data-toggle="modal" data-target="#myModal5" class="col-lg-2">
             <p class="btn btn-sm btn-info custom-btn">Add Customer</p>
        </div>
        
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
   		<!-- start search criteria panel -->
       <div class="filter-box" class="row">
           <div class="col-lg-12">
               <div id="filter-box-toggle" class="ibox-content m-b-sm border-bottom filter-box-toggle">
                   <div class="row">
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="order_id">Order ID</label>
                               <input type="text" id="order_id" name="order_id" value="" placeholder="Order ID" class="form-control">
                           </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="status">Order status</label>
                               <input type="text" id="status" name="status" value="" placeholder="Status" class="form-control">
                           </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="customer">Customer</label>
                               <input type="text" id="customer" name="customer" value="" placeholder="Customer" class="form-control">
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="date_added">Date added</label>
                               <div class="input-group date">
                                   <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" 
					 type="text" class="form-control" value="03/04/2014">
                               </div>
                           </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="date_modified">Date modified</label>
                               <div class="input-group date">
                                   <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_modified" 
					 type="text" class="form-control" value="03/06/2014">
                               </div>
                           </div>
                       </div>
                       <div class="col-sm-4">
                           <div class="form-group">
                               <label class="control-label" for="amount">Amount</label>
                               <input type="text" id="amount" name="amount" value="" placeholder="Amount" class="form-control">
                           </div>
                       </div>
                   </div>
                   <div class="row">
                   	<div class="col-sm-8"></div>
                   	<div class="col-sm-4">
                           <div class="form-group">
                               <div class="text-right">
                                   <button class="btn btn-primary btn-sm" type="submit">Search</button>
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
                <div id="filter-toggle-btn" class="filter-slider-btn"> <span> Filter Result </span></div>
           </div>
       </div>
       <!-- End search criteria panel -->
       <div class="row">
           <div class="col-lg-12">
               <div class="ibox">
                   <div class="ibox-content">
					<!-- start data tabel -->
                       <table id="customerTable" class="display" cellspacing="0" width="100%">
			<thead>
			    <tr>	
				<th>First Name</th>
				<th>Last Name</th>
			       <th>Address</th>
				<th>Contact No</th>
				<th>Email</th>
				<th>Actions</th>
			    </tr>
			</thead>
			<tfoot>
			    <tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Contact No</th>
				<th>Email</th>
				<th>Actions</th>
			    </tr>
			</tfoot>
		    </table>
		    <!-- End data tabel -->
                   </div>
               </div>
           </div>
       </div>
       <!-- start add new customer model -->
	    <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog"  aria-hidden="true">
	       <div class="modal-dialog modal-lg">
	           <div class="modal-content">
			<form method="POST" class="form-horizontal">
			       <div class="modal-header">
				   <button type="button" class="close" data-dismiss="modal">
					   <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				   </button>
				   <h4 class="modal-title">Add New Customer</h4>
			       </div>
			       <div class="modal-body">
				   <div class="ibox">
					<div class="ibox-content">
				       <div class="form-group"><label class="col-sm-2 control-label">First Name</label>
					   <div class="col-sm-6">
					       <input type="text" class="form-control input-sm" id="firstName">
					   </div>
				       </div>

				       <div class="form-group"><label class="col-sm-2 control-label">Last Name</label>
					   <div class="col-sm-6">
					       <input type="text" class="form-control input-sm" id="lastName">
					   </div>
				       </div>

				       <div class="form-group"><label class="col-sm-2 control-label">Email</label>
					   <div class="col-sm-6">
					       <input type="email" class="form-control input-sm" id="email">
					   </div>
				       </div>

				       <div class="form-group"><label class="col-sm-2 control-label">Address</label>
					   <div class="col-sm-6">
					       <textarea class="form-control" id="address"></textarea>
                                   </div>
                               </div>
                               
                               <div class="form-group"><label class="col-sm-2 control-label">Contact No</label>
                                   <div class="col-sm-6">
                                       <input type="text" class="form-control input-sm" id="contactNo">
                                   </div>
                               </div>

                               <div class="hr-line-dashed"></div>
                               <div class="form-group"><label class="col-sm-2 control-label">Gender</label>
                                   <div class="col-sm-6">
                                       <div class="i-checks"><label> <input type="radio" checked="" value="m" name="gender"> 
					    <i></i> Male </label>
					</div>
                                       <div class="i-checks"><label> <input type="radio" value="f" name="gender"> 
					    <i></i> Female </label>
					</div>
                                   </div>
                               </div>
	                   	</div>
	               	    </div>
	               </div>
			<!-- End add new customer model -->		
	               <div class="modal-footer">
	                   <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
	                   <button type="button" class="btn btn-primary" id="submit">Save changes</button>
	               </div>
	               </form>
	           </div>
	       </div>
	   </div>
       </div>
