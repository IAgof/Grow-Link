<?php
class ControllerWelcomeWelcom extends Controller {
  public function index() {
    // set title of the page
    $this->document->setTitle("My welcome Page");

    // define template file
    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/welcome/mywelcome.tpl')) {
      $this->template = $this->config->get('config_template') . '/template/welcome/mywelcome.tpl';
    } else {
      $this->template = 'default/template/welcome/mywelcome.tpl';
    }

    // define children templates
    $this->children = array(
      'common/column_left',
      'common/column_right',
      'common/content_top',
      'common/content_bottom',
      'common/footer',
      'common/header'
    );

    // set data to the variable
    $data['my_welcome_text'] = "This is my welcome page.";

    // call the "View" to render the output
    $this->response->setOutput($this->render());
  }
}
?>
