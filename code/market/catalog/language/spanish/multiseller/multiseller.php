<?php

// **********
// * Global *
// **********
$_['ms_viewinstore'] = 'Ver en la tienda';
$_['ms_view'] = 'Ver';
$_['ms_view_modify'] = 'Ver / Modificar';
$_['ms_publish'] = 'Publicar';
$_['ms_unpublish'] = 'Deshibilitar';
$_['ms_edit'] = 'Editar';
$_['ms_clone'] = 'Copiar';
$_['ms_relist'] = 'Poner en venta';
$_['ms_rate'] = 'Puntuar';
$_['ms_download'] = 'Descargar';
$_['ms_create_product'] = 'Crear producto';
$_['ms_delete'] = 'Eliminar';
$_['ms_update'] = 'Actualizar';
$_['ms_type'] = 'Tipo';
$_['ms_amount'] = 'Cantidad';
$_['ms_status'] = 'Estado';
$_['ms_date_paid'] = 'Fecha pagado';
$_['ms_last_message'] = 'Último mensaje';
$_['ms_description'] = 'Descripción';
$_['ms_id'] = '#';
$_['ms_by'] = 'por';
$_['ms_action'] = 'Acción';
$_['ms_sender'] = 'Autor';
$_['ms_message'] = 'Mensaje';
$_['ms_none'] = 'Nada';


$_['ms_date_created'] = 'Fecha creado';
$_['ms_date'] = 'Fecha';

$_['ms_button_submit'] = 'Enviar';
$_['ms_button_add_special'] = 'Definir precio especial';
$_['ms_button_add_discount'] = 'Definir descuento por cantidad';
$_['ms_button_submit_request'] = 'Mandar petición';
$_['ms_button_save'] = 'Guardar';
$_['ms_button_cancel'] = 'Cancelar';
$_['ms_button_select_predefined_avatar'] = 'Seleccionar Foto/Imgen';

$_['ms_button_select_image'] = 'Seleccionar imagen';
$_['ms_button_select_images'] = 'Seleccionar imágenes';
$_['ms_button_select_files'] = 'Seleccionar archivos';

$_['ms_transaction_order_created'] = 'Pedido creado';
$_['ms_transaction_order'] = 'Oferta: ID pedido #%s';
$_['ms_transaction_sale'] = 'Oferta: %s (-%s comisión)';
$_['ms_transaction_refund'] = 'Devolución: %s';
$_['ms_transaction_listing'] = 'Listado de productos: %s (%s)';
$_['ms_transaction_signup']      = 'Cuota de inscripción %s';
$_['ms_request_submitted'] = 'Tu petición ha sido enviada';

$_['ms_totals_line'] = 'Actualmente %s Tiendas y %s productos de rebajas';

$_['ms_text_welcome'] = '<a href="%s">Entrar</a> | <a href="%s">Registrar</a> | <a href="%s">Registrar cuenta de Tienda</a>.';
$_['ms_button_register_seller'] = 'Registrar como Tienda';
$_['ms_register_seller_account'] = 'Registrar cuenta de Tienda';

// Mails

// Seller
$_['ms_mail_greeting'] = "Hola %s,\n\n";
$_['ms_mail_greeting_no_name'] = "Hola,\n\n";
$_['ms_mail_ending'] = "\n\nSaludos,\n%s";
$_['ms_mail_message'] = "\n\nMensaje:\n%s";

$_['ms_mail_subject_seller_account_created'] = 'Cuenta de Tienda creada';
$_['ms_mail_seller_account_created'] = <<<EOT
Tu cuenta de Tienda %s se ha creado!

Puedes empezar a añadir productos.
EOT;

$_['ms_mail_subject_seller_account_awaiting_moderation'] = 'Pendiente de aprobación';
$_['ms_mail_seller_account_awaiting_moderation'] = <<<EOT
Tu cuenta en %s se ha creado y está pendiente de aprobación.

Recibirás un correo cuando esto suceda.
EOT;

$_['ms_mail_subject_product_awaiting_moderation'] = 'Producto pendiente de aprobación';
$_['ms_mail_product_awaiting_moderation'] = <<<EOT
Tu producto %s en %s está pendiente de aprobación.

Recibirás un correo cuando esto suceda.
EOT;

$_['ms_mail_subject_product_purchased'] = 'Nuevo pedido';
$_['ms_mail_product_purchased'] = <<<EOT
Tu producto(s) han sido comprados por %s.

Cliente: %s (%s)

Productos:
%s
Total: %s
EOT;

$_['ms_mail_product_purchased_no_email'] = <<<EOT
Tu producto(s) han sido comprados por %s.

Cliente: %s

Productos:
%s
Total: %s
EOT;

$_['ms_mail_subject_seller_contact'] = 'Nuevo mensaje de cliente';
$_['ms_mail_seller_contact'] = <<<EOT
Has recibido un mensaje de un cliente

Nombre: %s

Correo: %s

Producto: %s

Mensaje:
%s
EOT;

$_['ms_mail_seller_contact_no_mail'] = <<<EOT
Has recibido un mensaje de un cliente

Nombre: %s

Producto: %s

Mensaje:
%s
EOT;

$_['ms_mail_product_purchased_info'] = <<<EOT
\n
Dirección de envío:

%s %s
%s
%s
%s
%s %s
%s
%s
EOT;

$_['ms_mail_product_purchased_comment'] = 'Comentario: %s';

$_['ms_mail_subject_withdraw_request_submitted'] = 'Petición de pago enviada';
$_['ms_mail_withdraw_request_submitted'] = <<<EOT
hemos recibido tu petición. Recibirás tus ganancias cuando se procese.
EOT;

$_['ms_mail_subject_withdraw_request_completed'] = 'Pago completado';
$_['ms_mail_withdraw_request_completed'] = <<<EOT
Tu petición de pago s eha procesado. En breve recibirás tus ganancias.
EOT;

$_['ms_mail_subject_withdraw_request_declined'] = 'Petición de pago denegada';
$_['ms_mail_withdraw_request_declined'] = <<<EOT
Tu petición de pago ha sido denegada. Tus fondos han sido devueltos a %s.
EOT;

$_['ms_mail_subject_transaction_performed'] = 'Nueva transacción';
$_['ms_mail_transaction_performed'] = <<<EOT
una nueva transacción se ha añadido a tu cuenta %s.
EOT;

$_['ms_mail_subject_remind_listing'] = 'La puesta en venta del producto ha finalizado';
$_['ms_mail_seller_remind_listing'] = <<<EOT
El periodo de venta de tu producto %s ha terminado. ve a tu cuenta si quieres actualizarlo.
EOT;

// *********
// * Admin *
// *********
$_['ms_mail_admin_subject_seller_account_created'] = 'Nueva cuenta de Tienda creada';
$_['ms_mail_admin_seller_account_created'] = <<<EOT
NNueva cuenta de Tienda %s creada
Nombre: %s (%s)
Correo: %s
EOT;

$_['ms_mail_admin_subject_seller_account_awaiting_moderation'] = 'Cuenta de Tienda pendiente de aprobación';
$_['ms_mail_admin_seller_account_awaiting_moderation'] = <<<EOT
la nueva cuenta de Tienda en %s se ha creado y está pendiente de aprobación.
Tienda: %s (%s)
Correo: %s

La puedes procesar en la sección de multiTiendas.
EOT;

$_['ms_mail_admin_subject_product_created'] = 'Nueov producto añadido';
$_['ms_mail_admin_product_created'] = <<<EOT
nuevo producto %s ha sido añadido %s.

Puedes verlo o editarlo en tu cuenta.
EOT;

$_['ms_mail_admin_subject_new_product_awaiting_moderation'] = 'Nuevo producto pendiente de aprobación';
$_['ms_mail_admin_new_product_awaiting_moderation'] = <<<EOT
nuevo producto %s ha sido añadido a %s y etsá pendiente de aprobación.

Puedes verlo o editarlo en tu cuenta.
EOT;

$_['ms_mail_admin_subject_edit_product_awaiting_moderation'] = 'Producto editado y pendiente de aprobación';
$_['ms_mail_admin_edit_product_awaiting_moderation'] = <<<EOT
El producto %s en %s ha sido editado y está pendiente de aprobación.

Puedes verlo o editarlo en tu cuenta.
EOT;

$_['ms_mail_admin_subject_withdraw_request_submitted'] = 'Petición de pago pendiente de aprobación';
$_['ms_mail_admin_withdraw_request_submitted'] = <<<EOT
Nueva petición de pago enviada.

Puedes verla o editarla en tu cuenta.
EOT;

// Success
$_['ms_success_product_published'] = 'Producto publicado';
$_['ms_success_product_unpublished'] = 'Producto despublicado';
$_['ms_success_product_created'] = 'Producto creado';
$_['ms_success_product_updated'] = 'producto actualizado';
$_['ms_success_product_deleted'] = 'Producto eliminado';

// Errors
$_['ms_error_sellerinfo_nickname_empty'] = 'Nombre de Tienda no puede estar vacío';
$_['ms_error_sellerinfo_nickname_alphanumeric'] = 'nombre de Tienda solo puede tener caracteres alfanuméricos';
$_['ms_error_sellerinfo_nickname_utf8'] = 'Nombre de Tienda roductor solo puede tener caracteres UTF-8 ';
$_['ms_error_sellerinfo_nickname_latin'] = 'nombre de roductor sólo puede contener símbolos y signos diacríticos alfanuméricos';
$_['ms_error_sellerinfo_nickname_length'] = 'Nombre de Tienda debe tener entre 4 y 50 caracteres';
$_['ms_error_sellerinfo_nickname_taken'] = 'Ese Nombre de Tienda ya está cogido';
$_['ms_error_sellerinfo_company_length'] = 'El nombre de la compañía no debe tener más de 50 caracteres';
$_['ms_error_sellerinfo_description_length'] = 'La descripción no puede tener más de 1000 caracteres';
$_['ms_error_sellerinfo_paypal'] = 'Cuenta PayPal inválida';
$_['ms_error_sellerinfo_terms'] = 'Error, debes aceptar %s';
$_['ms_error_file_extension'] = 'Extensión inválida';
$_['ms_error_file_type'] = 'Tipo de archivo inválido';
$_['ms_error_file_size'] = 'Archivo demasiado grande';
$_['ms_error_image_too_small'] = 'Imagen demasiado pequeña. Tamaño mínimo: %s x %s (anchura x altura)';
$_['ms_error_image_too_big'] = 'Imagen demasiado grande. Tamaño máximo: %s x %s (anchura x altura)';
$_['ms_error_file_upload_error'] = 'Error en la subida';
$_['ms_error_form_submit_error'] = 'Error al enviar formulario. Por favor compruebe que todos los datos del producto son correctos.';
$_['ms_error_form_notice'] = 'Por favor, buscar errores en campos.';
$_['ms_error_product_name_empty'] = 'No hay nombre de producto';
$_['ms_error_product_name_length'] = 'Nombre de producto debe tener entre %s y %s caracteres';
$_['ms_error_product_description_empty'] = 'La descripción del producto no puede estar vacía';
$_['ms_error_product_description_length'] = 'La descripción del producto debe tener entre %s y %s caracteres';
$_['ms_error_product_tags_length'] = 'Línea demasiado larga';
$_['ms_error_product_price_empty'] = 'Por favor especificar precio';
$_['ms_error_product_price_invalid'] = 'Precio inválido';
$_['ms_error_product_price_low'] = 'Precio demasiado bajo';
$_['ms_error_product_price_high'] = 'Precio demasiado alto';
$_['ms_error_product_category_empty'] = 'Por favor, selecciona categoría';
$_['ms_error_product_model_empty'] = 'Modelo no puede estar vacío';
$_['ms_error_product_model_length'] = 'Modelo debe tener entre %s y %s caracteres';
$_['ms_error_product_image_count'] = 'Por favor sube al menos %s imagen(s) para tu producto';
$_['ms_error_product_download_count'] = 'Por favor, subir al menos %s descarga(s) para tu producto';
$_['ms_error_product_image_maximum'] = 'No más de %s imagen(s) permitidas';
$_['ms_error_product_download_maximum'] = 'No más de  %s descarga(s) permitidas';
$_['ms_error_product_message_length'] = 'Mensaje no puede contener más de 1000 caracteres';
$_['ms_error_product_attribute_required'] = 'Este atributo es requerido';
$_['ms_error_product_attribute_long'] = 'El valor no debe tener más de  %s símbolos';
$_['ms_error_withdraw_amount'] = 'Cantidad inválida';
$_['ms_error_withdraw_balance'] = 'No hay fondos suficientes en tu balance';
$_['ms_error_withdraw_minimum'] = 'No puedes retirar menos del límite';
$_['ms_error_contact_email'] = 'Por favor, indica una cuenta de correo válida';
$_['ms_error_contact_captcha'] = 'Error en captcha';
$_['ms_error_contact_text'] = 'Mensaje no puede contener más de 2000 caracteres';
$_['ms_error_contact_allfields'] = 'Por favor rellena todos los campos';
$_['ms_error_invalid_quantity_discount_priority'] = 'Error en campo prioritario - Por favor introdúcelo correctamente';
$_['ms_error_invalid_quantity_discount_quantity'] = 'Cantidad debe ser 2 o más';
$_['ms_error_invalid_quantity_discount_price'] = 'Cantidad inválida para el precio introducido';
$_['ms_error_invalid_quantity_discount_dates'] = 'Los campos para descuento por fecha deben ser rellenados';
$_['ms_error_invalid_special_price_priority'] = 'Error en campo de prioridad - por favor introducir el valor correcto';
$_['ms_error_invalid_special_price_price'] = 'Precio especial inválido';
$_['ms_error_invalid_special_price_dates'] = 'Los campos de fechas para precios especiales tienen que se rellenados';
$_['ms_error_seller_product'] = 'No puedes comprar tu propio producto';

// Account - General
$_['ms_account_unread_pm'] = 'Tienes nuevos mensjaes privados';
$_['ms_account_unread_pms'] = 'Tienes %s mensajes privados nuevos';
$_['ms_account_register_new'] = 'Nueva Tienda';
$_['ms_account_register_seller'] = 'Registrar cuenta de Tienda';
$_['ms_account_register_seller_note'] = 'Crea tu cuenta y empieza a vender con nosotros';
$_['ms_account_register_details'] = 'Paso 1: Tus detalles';
$_['ms_account_register_seller_success_heading'] = 'Tu cuenta de Tienda se ha creado';
$_['ms_account_register_seller_success_message']  = '<p>Bienvenido a  %s!</p> <p>Felicidades,  Tu nueva cuenta se ha creado.</p> <p>Ahora puedes empezar a subir productos.</p> <p>Si tienes dudas, <a href="%s">contáctanos</a>.</p>';
$_['ms_account_register_seller_success_approval'] = '<p>Bienvenido a %s!</p> <p>Felicidades,  Tu nueva cuenta se ha creado y está pendiente de aprobación. Serás notificado por correo.</p><p>Si tienes dudas, <a href="%s">contáctanos</a>.</p>';

$_['ms_seller'] = 'Tienda';
$_['ms_seller_forseller'] = 'Para Tienda';
$_['ms_account_dashboard'] = 'Menú principal de Tienda';
$_['ms_account_seller_account'] = 'Cuenta de Tienda';
$_['ms_account_customer_account'] = 'Cuenta de cliente';
$_['ms_account_sellerinfo'] = 'Perfil de Tienda';
$_['ms_account_sellerinfo_new'] = 'Nueva cuenta de Tienda';
$_['ms_account_newproduct'] = 'Nuevo producto';
$_['ms_account_products'] = 'Productos';
$_['ms_account_transactions'] = 'Transacciones';
$_['ms_account_orders'] = 'Pedidos';
$_['ms_account_withdraw'] = 'Pedir pago';
$_['ms_account_stats'] = 'Panel informacion Sensores';

// Account - New product
$_['ms_account_newproduct_heading'] = 'Nuevo producto';
$_['ms_account_newproduct_breadcrumbs'] = 'Nuevo producto';
//General Tab
$_['ms_account_product_tab_general'] = 'General';
$_['ms_account_product_tab_specials'] = 'Precios especiales';
$_['ms_account_product_tab_discounts'] = 'Descuentos por cantidad';
$_['ms_account_product_name_description'] = 'Nombre & Descripción';
$_['ms_account_product_name'] = 'Nombre';
$_['ms_account_product_name_note'] = 'Especificar nombre para el producto';
$_['ms_account_product_description'] = 'Descripción';
$_['ms_account_product_description_note'] = 'Describe tu producto';
$_['ms_account_product_meta_description'] = 'Descripción clave';
$_['ms_account_product_meta_description_note'] = 'Especificar descripción clave para el producto';
$_['ms_account_product_meta_keyword'] = 'Palabras clave';
$_['ms_account_product_meta_keyword_note'] = 'Especificarpalabra clave para el producto';
$_['ms_account_product_tags'] = 'Etiquetas';
$_['ms_account_product_tags_note'] = 'Especificar etiquetas para el producto.';
$_['ms_account_product_price_attributes'] = 'Precio & atributos';
$_['ms_account_product_price'] = 'Precio';
$_['ms_account_product_price_note'] = 'Seleccionar precio para el producto';
$_['ms_account_product_listing_flat'] = 'Tarifa de producto para este producto es <span>%s</span>';
$_['ms_account_product_listing_percent'] = 'Tarifa de producto se basa en el precio del producto. Tarifa de producto actual: <span>%s</span>.';
$_['ms_account_product_listing_balance'] = 'Esta cantidad se deducirá de tu cuenta de Tienda.';
$_['ms_account_product_listing_paypal'] = 'Serás redirigido a PayPal después de completar la petición.';
$_['ms_account_product_listing_itemname'] = 'Tarifa de venta de producto %s';
$_['ms_account_product_listing_until'] = 'Este producto estará disponible hasta %s';
$_['ms_account_product_category'] = 'Categoría';
$_['ms_account_product_category_note'] = 'Seleccionar categoría de producto';
$_['ms_account_product_enable_shipping'] = 'habilitar envío';
$_['ms_account_product_enable_shipping_note'] = 'Espedificar si tu producto requiere envío';
$_['ms_account_product_quantity'] = 'Stock';
$_['ms_account_product_quantity_note']    = 'Espedificar la cantidad que dispones de tu producto';
$_['ms_account_product_files'] = 'Archivos';
$_['ms_account_product_download'] = 'Descargas';
$_['ms_account_product_download_note'] = 'Subir archivos de tus productos. Extensiones permitidas: %s';
$_['ms_account_product_push'] = 'Actualizaciones disponibles para antiguos clientes';
$_['ms_account_product_push_note'] = 'Nuevas descargas y actualizaciones estarán disponibles para los usarios antiguos';
$_['ms_account_product_image'] = 'Images';
$_['ms_account_product_image_note'] = 'Seleccionar imágenes para tu producto. La primera imagen se usará como miniatura. Puedes cambiar el orden de las imágenes arrastrándolas. Extensiones permitidas: %s';
$_['ms_account_product_message_reviewer'] = 'Mensaje para el autor';
$_['ms_account_product_message'] = 'Mensaje';
$_['ms_account_product_message_note'] = 'Tu mensaje para le autor';
//Data Tab
$_['ms_account_product_tab_data'] = 'Datos';
$_['ms_account_product_model'] = 'Modelo';
$_['ms_account_product_sku'] = 'SKU';
$_['ms_account_product_sku_note'] = 'Stock Keeping Unit';
$_['ms_account_product_upc']  = 'UPC';
$_['ms_account_product_upc_note'] = 'Universal Product Code';
$_['ms_account_product_ean'] = 'EAN';
$_['ms_account_product_ean_note'] = 'European Article Number';
$_['ms_account_product_jan'] = 'JAN';
$_['ms_account_product_jan_note'] = 'Japanese Article Number';
$_['ms_account_product_isbn'] = 'ISBN';
$_['ms_account_product_isbn_note'] = 'International Standard Book Number';
$_['ms_account_product_mpn'] = 'MPN';
$_['ms_account_product_mpn_note'] = 'Manufacturer Part Number';
$_['ms_account_product_manufacturer'] = 'Fabricante';
$_['ms_account_product_manufacturer_note'] = '(Autocompletar)';
$_['ms_account_product_tax_class'] = 'Clase de impuesto';
$_['ms_account_product_date_available'] = 'Fecha disponible';
$_['ms_account_product_stock_status'] = 'Estado agotado';
$_['ms_account_product_stock_status_note'] = 'Estado que se muestra cuando está agotado';
$_['ms_account_product_subtract'] = 'Reposición de stock';
$_['ms_account_product_customer_group'] = 'Grupo de cliente';


// Options
$_['ms_account_product_tab_options'] = 'Opciones';
$_['ms_options_add'] = '+ añadir opción';
$_['ms_options_add_value'] = '+ añadir valor';
$_['ms_options_required'] = 'opción requerida';
$_['ms_options_price_prefix'] = 'Cambiar prefijo de precio';
$_['ms_options_price'] = 'Precio...';
$_['ms_options_quantity'] = 'Cantidad...';


$_['ms_account_product_manufacturer'] = 'Fabricante';
$_['ms_account_product_manufacturer_note'] = '(Autocompletar)';
$_['ms_account_product_tax_class'] = 'Clase de impuesto';
$_['ms_account_product_date_available'] = 'Fecha disponible';
$_['ms_account_product_stock_status'] = 'Estado agotado';
$_['ms_account_product_stock_status_note'] = 'Estado que se muestra cuando está agotado';
$_['ms_account_product_subtract'] = 'Reposición de stock';

$_['ms_account_product_priority'] = 'Prioridad';
$_['ms_account_product_date_start'] = 'Fecha de inicio';
$_['ms_account_product_date_end'] = 'Fecha final';
$_['ms_account_product_sandbox'] = 'Aviso, el canal de pago está en modo \'Sandbox Mode\'. Tu cuenta no será cobrada.';



// Account - Edit product
$_['ms_account_editproduct_heading'] = 'Editar producto';
$_['ms_account_editproduct_breadcrumbs'] = 'Editar producto';

// Account - Clone product
$_['ms_account_cloneproduct_heading'] = 'Copiar producto';
$_['ms_account_cloneproduct_breadcrumbs'] = 'Copiar producto';

// Account - Relist product
$_['ms_account_relist_product_heading'] = 'Volver a poner producto';
$_['ms_account_relist_product_breadcrumbs'] = 'Volver a poner producto';

// Account - Seller
$_['ms_account_sellerinfo_heading'] = 'Perfil de Tienda';
$_['ms_account_sellerinfo_breadcrumbs'] = 'perfil de Tienda';
$_['ms_account_sellerinfo_nickname'] = 'Nombre de Tienda';
$_['ms_account_sellerinfo_nickname_note'] = 'Especificar Nombre de Tienda';
$_['ms_account_sellerinfo_description'] = 'Descripción';
$_['ms_account_sellerinfo_description_note'] = 'Descripción de ti';
$_['ms_account_sellerinfo_company'] = 'Empresa';
$_['ms_account_sellerinfo_company_note'] = 'Tu empresa (opcional)';
$_['ms_account_sellerinfo_country'] = 'País';
$_['ms_account_sellerinfo_country_dont_display'] = 'No mostrar mi país';
$_['ms_account_sellerinfo_country_note'] = 'Selecciona tu país.';
$_['ms_account_sellerinfo_zone'] = 'Región / Estado';
$_['ms_account_sellerinfo_zone_select'] = 'Seleccionar Región / Estado';
$_['ms_account_sellerinfo_zone_not_selected'] = 'No Región / Estado seleccionado';
$_['ms_account_sellerinfo_zone_note'] = 'Select your Región / Estado de la lista.';
$_['ms_account_sellerinfo_avatar'] = 'Foto/Imgen';
$_['ms_account_sellerinfo_avatar_note'] = 'Seleccionar Foto/Imgen';
$_['ms_account_sellerinfo_banner'] = 'Banner';
$_['ms_account_sellerinfo_banner_note'] = 'Subir un banner que saldrá en tu perfil';
$_['ms_account_sellerinfo_paypal'] = 'Paypal';
$_['ms_account_sellerinfo_paypal_note'] = 'Especificar cuenta de PayPal';
$_['ms_account_sellerinfo_reviewer_message'] = 'Mensaje para el autor';
$_['ms_account_sellerinfo_reviewer_message_note'] = 'Mi mensaje para el autor';
$_['ms_account_sellerinfo_terms'] = 'Aceptar términos';
$_['ms_account_sellerinfo_terms_note'] = 'He leído y aceptado <a class="agree" href="%s" alt="%s"><b>%s</b></a>';
$_['ms_account_sellerinfo_fee_flat'] = 'Hay una tarifa <span>%s</span> para convertirse en un Tienda %s.';
$_['ms_account_sellerinfo_fee_balance'] = 'Esta cantidad será deducida de tu balance.';
$_['ms_account_sellerinfo_fee_paypal'] = 'Serás redirigido a PayPal después de completar el formulario.';
$_['ms_account_sellerinfo_signup_itemname'] = 'Registro de cuenta en %s';
$_['ms_account_sellerinfo_saved'] = 'Datos de cuenta guardados.';

$_['ms_account_status'] = 'El estado de tu cuenta de Tienda es: ';
$_['ms_account_status_tobeapproved'] = '<br />Podrá usar su cuenta de tienda cuando sea aprobado por el equipo de Qfresh.co, muchas gracias!';
$_['ms_account_status_please_fill_in'] = 'Complete el formulario para darse de alta como Tienda.';

$_['ms_seller_status_' . MsSeller::STATUS_ACTIVE] = 'Activo';
$_['ms_seller_status_' . MsSeller::STATUS_INACTIVE] = 'Inactivo';
$_['ms_seller_status_' . MsSeller::STATUS_DISABLED] = 'Deshabilitado';
$_['ms_seller_status_' . MsSeller::STATUS_INCOMPLETE] = 'Incompleto';
$_['ms_seller_status_' . MsSeller::STATUS_DELETED] = 'Suprimido';
$_['ms_seller_status_' . MsSeller::STATUS_UNPAID] = 'Tarifa de registro sin pagar';

// Account - Products
$_['ms_account_products_heading'] = 'Mis productos';
$_['ms_account_products_breadcrumbs'] = 'Mis productos';
$_['ms_account_products_image'] = 'Imagen';
$_['ms_account_products_product'] = 'Producto';
$_['ms_account_products_sales'] = 'Ventas';
$_['ms_account_products_earnings'] = 'Ganancias';
$_['ms_account_products_status'] = 'Estado';
$_['ms_account_products_date'] = 'Fecha añadido';
$_['ms_account_products_listing_until'] = 'A la venta hasta';
$_['ms_account_products_action'] = 'Acción';
$_['ms_account_products_noproducts'] = 'no hay productos';
$_['ms_account_products_confirmdelete'] = '¿Seguro de que quieres eliminarlo?';

$_['ms_not_defined'] = 'Sin definir';

$_['ms_product_status_' . MsProduct::STATUS_ACTIVE] = 'Activo';
$_['ms_product_status_' . MsProduct::STATUS_INACTIVE] = 'Inactivo';
$_['ms_product_status_' . MsProduct::STATUS_DISABLED] = 'Deshabilitado';
$_['ms_product_status_' . MsProduct::STATUS_DELETED] = 'Suprimido';
$_['ms_product_status_' . MsProduct::STATUS_UNPAID] = 'Tarifa de venta sin pagar';

// Account - Conversations and Messages
$_['ms_account_conversations'] = 'Conversaciones';
$_['ms_account_messages'] = 'Mensajes';

$_['ms_account_conversations_heading'] = 'Mis conversaciones';
$_['ms_account_conversations_breadcrumbs'] = 'Mis conversaciones';

$_['ms_account_conversations_status'] = 'Estado';
$_['ms_account_conversations_date_created'] = 'Fecha de creación';
$_['ms_account_conversations_with'] = 'Conversación con';
$_['ms_account_conversations_title'] = 'Título';

$_['ms_conversation_title_product'] = 'Pregunta sobre el producto: %s';
$_['ms_conversation_title'] = 'Pregunta de  %s';

$_['ms_account_conversations_read'] = 'Leídos';
$_['ms_account_conversations_unread'] = 'Nuevos';

$_['ms_account_messages_heading'] = 'Mensajes';
$_['ms_account_messages_breadcrumbs'] = 'Mensajes';

$_['ms_message_text'] = 'Tu mensaje';
$_['ms_post_message'] = 'Enviar mensaje';

$_['ms_customer_does_not_exist'] = 'Cuenta de cliente eliminada';
$_['ms_error_empty_message'] = 'El mensaje no puede estar vacío';

$_['ms_mail_subject_private_message'] = 'Nuevo mensaje recibido';
$_['ms_mail_private_message'] = <<<EOT
has recibido un nuevo mensaje de %s

%s

%s

Puedes responder a esto desde tu cuenta.
EOT;

$_['ms_mail_subject_order_updated'] = 'Tu pedido #%s ha sido actualizado por %s';
$_['ms_mail_order_updated'] = <<<EOT
Tu pedido en %s ha sido actualizado por %s:

Pedido#: %s

Productos:
%s

Estado: %s

Comentario:
%s

EOT;

$_['ms_mail_subject_seller_vote'] = 'Votar por el la Tienda';
$_['ms_mail_seller_vote_message'] = 'Votar por la Tienda';

// Account - Transactions
$_['ms_account_transactions_heading'] = 'Financias';
$_['ms_account_transactions_breadcrumbs'] = 'Financias';
$_['ms_account_transactions_balance'] = 'Balance actual:';
$_['ms_account_transactions_earnings'] = 'Beneficios hasta la fecha:';
$_['ms_account_transactions_records'] = 'Registros de balance';
$_['ms_account_transactions_description'] = 'Descripción';
$_['ms_account_transactions_amount'] = 'Cantidad';
$_['ms_account_transactions_notransactions'] = 'No hay transacciones';

// Payments
$_['ms_payment_payments'] = 'Pagos';
$_['ms_payment_order'] = 'Pedido #%s';
$_['ms_payment_type_' . MsPayment::TYPE_SIGNUP] = 'Tarifa de registro';
$_['ms_payment_type_' . MsPayment::TYPE_LISTING] = 'Tarifa de venta';
$_['ms_payment_type_' . MsPayment::TYPE_PAYOUT] = 'Pago manual';
$_['ms_payment_type_' . MsPayment::TYPE_PAYOUT_REQUEST] = 'Solicitud de pago';
$_['ms_payment_type_' . MsPayment::TYPE_RECURRING] = 'Pago recurrente';
$_['ms_payment_type_' . MsPayment::TYPE_SALE] = 'Venta';

$_['ms_payment_status_' . MsPayment::STATUS_UNPAID] = 'Pendiente de pago';
$_['ms_payment_status_' . MsPayment::STATUS_PAID] = 'Pagado';

// Account - Orders
$_['ms_account_orders_heading'] = 'Mis pedidos';
$_['ms_account_orders_breadcrumbs'] = 'Mis pedidos';
$_['ms_account_orders_id'] = 'Pedido #';
$_['ms_account_orders_customer'] = 'Cliente';
$_['ms_account_orders_products'] = 'Productos';
$_['ms_account_orders_history'] = 'Historial';
$_['ms_account_orders_addresses'] = 'Direcciones';
$_['ms_account_orders_total'] = 'Cantidad total';
$_['ms_account_orders_view'] = 'Ver pedido';
$_['ms_account_orders_noorders'] = 'No hay pedidos';
$_['ms_account_orders_nohistory'] = 'No hay historial';
$_['ms_account_orders_change_status']    = 'Cambiar estado del pedido';
$_['ms_account_orders_add_comment']    = 'Añadir comentario...';
$_['ms_account_orders_add_history']    = 'Añadir historial';

$_['ms_account_order_information'] = 'Información de pedidos';

// Account - Dashboard
$_['ms_account_dashboard_heading'] = 'Tienda';
$_['ms_account_dashboard_breadcrumbs'] = 'Tienda';
$_['ms_account_dashboard_orders'] = 'Últimos pedidos';
$_['ms_account_dashboard_overview'] = 'Información general';
$_['ms_account_dashboard_seller_group'] = 'Grupo de Tiendas';
$_['ms_account_dashboard_listing'] = 'tarifa de venta';
$_['ms_account_dashboard_sale'] = 'Cargo de venta';
$_['ms_account_dashboard_royalty'] = 'Regalías';
$_['ms_account_dashboard_stats'] = 'Panel informacion Sensores';
$_['ms_account_dashboard_balance'] = 'Saldo actual';
$_['ms_account_dashboard_total_sales'] = 'Ventas totales';
$_['ms_account_dashboard_total_earnings'] = 'Ganancias totales';
$_['ms_account_dashboard_sales_month'] = 'Ventas este mes';
$_['ms_account_dashboard_earnings_month'] = 'Ganancias este mes';
$_['ms_account_dashboard_nav'] = 'Gestión de prefil de Tienda';
$_['ms_account_dashboard_nav_profile'] = 'Modificar tu perfil de Tienda';
$_['ms_account_dashboard_nav_product'] = 'Nuevo producto';
$_['ms_account_dashboard_nav_products'] = 'Gestionar tus productos';
$_['ms_account_dashboard_nav_orders'] = 'Gestionar tus pedidos';
$_['ms_account_dashboard_nav_balance'] = 'Ver registros financieros';
$_['ms_account_dashboard_nav_payout'] = 'Solicitar pago';

// Account - Request withdrawal
$_['ms_account_withdraw_heading'] = 'Pedir pago';
$_['ms_account_withdraw_breadcrumbs'] = 'Pedir pago';
$_['ms_account_withdraw_balance'] = 'Saldo:';
$_['ms_account_withdraw_balance_available'] = 'Disponible para la retirada:';
$_['ms_account_withdraw_minimum'] = 'Pago mínimo:';
$_['ms_account_balance_reserved_formatted'] = '-%s retiro pendiente';
$_['ms_account_balance_waiting_formatted'] = '-%s periodo de espera';
$_['ms_account_withdraw_description'] = 'Petición de pago vía %s (%s) en %s';
$_['ms_account_withdraw_amount'] = 'Cantidad:';
$_['ms_account_withdraw_amount_note'] = 'Por favor especificar la cantidad';
$_['ms_account_withdraw_method'] = 'Método de pago:';
$_['ms_account_withdraw_method_note'] = 'Por favor selecciona método de pago';
$_['ms_account_withdraw_method_paypal'] = 'PayPal';
$_['ms_account_withdraw_all'] = 'Todas las ganancias disponibles';
$_['ms_account_withdraw_minimum_not_reached'] = 'Tu balance es inferior al mínimo';
$_['ms_account_withdraw_no_funds'] = 'No hay fondos para extraer.';
$_['ms_account_withdraw_no_paypal'] = 'Por favor <a href="index.php?route=seller/account-profile">introduce tu cuenta de PayPal</a> primero';

// Account - Stats
$_['ms_account_stats_heading'] = 'Panel informacion Sensores';
$_['ms_account_stats_breadcrumbs'] = 'Panel informacion Sensores';
$_['ms_account_stats_tab_summary'] = 'Resumen';
$_['ms_account_stats_tab_by_product'] = 'Por producto';
$_['ms_account_stats_tab_by_year'] = 'Por año';
$_['ms_account_stats_summary_comment'] = 'Resumen de ventas';
$_['ms_account_stats_sales_data'] = 'Ventas';
$_['ms_account_stats_number_of_orders'] = 'Pedidos totales';
$_['ms_account_stats_total_revenue'] = 'Beneficios totales';
$_['ms_account_stats_average_order'] = 'Pedido medio';
$_['ms_account_stats_statistics'] = 'Panel informacion Sensores';
$_['ms_account_stats_grand_total'] = 'Ventas totales';
$_['ms_account_stats_product'] = 'Producto';
$_['ms_account_stats_sold'] = 'Vendido';
$_['ms_account_stats_total'] = 'Total';
$_['ms_account_stats_this_year'] = 'Este año';
$_['ms_account_stats_year_comment'] = '<span id="sales_num">%s</span> venta(s) para ese periodo';
$_['ms_account_stats_show_orders'] = 'Ver pedidos de: ';
$_['ms_account_stats_month'] = 'mes';
$_['ms_account_stats_num_of_orders'] = 'Pedidos totales';
$_['ms_account_stats_total_r'] = 'Beneficios totales';
$_['ms_account_stats_average_order'] = 'Pedido medio';
$_['ms_account_stats_today'] = 'Hoy, ';
$_['ms_account_stats_yesterday'] = 'Ayer, ';
$_['ms_account_stats_daily_average'] = 'Media diaria para ';
$_['ms_account_stats_date_month_format'] = 'F Y';
$_['ms_account_stats_projected_totals'] = 'Totales para ';
$_['ms_account_stats_grand_total_sales'] = 'Ventas totales';

// Product page - Seller information
$_['ms_catalog_product_sellerinfo'] = 'Información de la Tienda';
$_['ms_catalog_product_contact'] = 'Contactar con la Tienda';

$_['ms_footer'] = '<br>MultiMerch Marketplace by <a href="http://multimerch.com/">multimerch.com</a>';

// Catalog - Sellers list
$_['ms_catalog_sellers_heading'] = 'Tiendas';
$_['ms_catalog_sellers_country'] = 'País:';
$_['ms_catalog_sellers_website'] = 'Web:';
$_['ms_catalog_sellers_company'] = 'Compañía:';
$_['ms_catalog_sellers_totalsales'] = 'Ventas:';
$_['ms_catalog_sellers_totalproducts'] = 'Productos:';
$_['ms_sort_country_desc'] = 'País (Z - A)';
$_['ms_sort_country_asc'] = 'País (A - Z)';
$_['ms_sort_nickname_desc'] = 'Nombre (Z - A)';
$_['ms_sort_nickname_asc'] = 'Nombre (A - Z)';

// Catalog - Seller profile page
$_['ms_catalog_sellers'] = 'Tiendas';
$_['ms_catalog_sellers_empty'] = 'No hay Tiendas todavía.';
$_['ms_catalog_seller_profile'] = 'Ver perfil';
$_['ms_catalog_seller_profile_heading'] = 'Perfil de %s';
$_['ms_catalog_seller_profile_breadcrumbs'] = 'Perfil de %s';
$_['ms_catalog_seller_profile_about_seller'] = 'Sobre la Tienda';
$_['ms_catalog_seller_profile_products'] = 'Algunos de sus productos';
$_['ms_catalog_seller_profile_tab_products'] = 'Productos';

$_['ms_catalog_seller_profile_social'] = 'Perfiles';
$_['ms_catalog_seller_profile_country'] = 'País:';
$_['ms_catalog_seller_profile_zone'] = 'Región/Estado:';
$_['ms_catalog_seller_profile_website'] = 'Web:';
$_['ms_catalog_seller_profile_company'] = 'Compañía:';
$_['ms_catalog_seller_profile_totalsales'] = 'Ventas totales:';
$_['ms_catalog_seller_profile_totalproducts'] = 'Todos los productos:';
$_['ms_catalog_seller_profile_view_products'] = 'Ver productos';
$_['ms_catalog_seller_profile_view'] = 'Ver todos los productos de %s';

// Catalog - Seller's products list
$_['ms_catalog_seller_products_heading'] = 'Productos de %s';
$_['ms_catalog_seller_products_breadcrumbs'] = 'Productos de %s';
$_['ms_catalog_seller_products_empty'] = 'No hay productos';

// Catalog - Seller contact dialog
$_['ms_sellercontact_title'] = 'Mandar mensaje';
$_['ms_sellercontact_signin'] = 'Por favor <a href="%s">entra</a> para contactar con %s';
$_['ms_sellercontact_sendto'] = 'Enviar mensaje a %s';
$_['ms_sellercontact_text'] = 'Mensaje: ';
$_['ms_sellercontact_captcha'] = 'Captcha';
$_['ms_sellercontact_sendmessage'] = 'Enviar mensaje a %s';
$_['ms_sellercontact_close'] = 'Cerrar';
$_['ms_sellercontact_send'] = 'Enviar';
$_['ms_sellercontact_success'] = 'Tu mensaje se ha mandado correctamente';

?>
