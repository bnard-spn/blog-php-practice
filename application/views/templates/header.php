<html>
	<head>
		<title>bnardCI</title>
		<link rel="stylesheet" type="text/css" href="https://bootswatch.com/flatly/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
		<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="<?php echo base_url(); ?>">bnardCI</a>
				</div>
				<div id="navbar">
					<ul class="nav navbar-nav">
						<li><a href="<?php echo base_url(); ?>">Home</a></li>
						<li><a href="<?php echo base_url(); ?>about">About</a></li>
						<li><a href="<?php echo base_url(); ?>posts">Blog</a></li>
						<li><a href="<?php echo base_url(); ?>categories">Categories</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<?php echo base_url(); ?>users/register">Register</a></li>
						<li><a href="<?php echo base_url(); ?>posts/create">Create Post</a></li>
						<li><a href="<?php echo base_url(); ?>categories/create">Create Category</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="container">
		<!-- Flash message -->
		<?php if($this->session->flashdata('user_registered')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>' ?>
		<?php endif; ?>
		<?php if($this->session->flashdata('post_created')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>' ?>
		<?php endif; ?>
		<?php if($this->session->flashdata('post_updated')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>' ?>
		<?php endif; ?>
		<?php if($this->session->flashdata('category_created')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>' ?>
		<?php endif; ?>
		<?php if($this->session->flashdata('post_deleted')): ?>
			<?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>' ?>
		<?php endif; ?>
