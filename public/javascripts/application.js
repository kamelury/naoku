// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$j.facebox.settings.loadingImage = '/images/facebox/loading.gif';	
$j.facebox.settings.closeImage = '/images/facebox/closelabel.png'

$j(document).ready(function($) {
  $j('a[rel*=facebox]').facebox()
})