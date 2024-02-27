<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ChildCategoryController;
use App\Http\Controllers\CkeditorController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\TermsAndPolicyController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GeneralInfoController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\ContactRequestontroller;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PromoCodeController;
use App\Http\Controllers\WishListController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\SupportTicketController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\SubscribedUsersController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\SmsServiceController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\PermissionRoutesController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\UserRoleController;
use App\Http\Controllers\DeliveryChargeController;
use App\Http\Controllers\CustomPageController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\DoctorController;
use Illuminate\Support\Facades\Artisan;
use App\Http\Middleware\CheckUserType;

Route::get('/', function () {
    return redirect('/login');
});

Route::get('/clear', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');

    // Artisan::call('config:cache');
    // Artisan::call('route:cache');
    // Artisan::call('view:cache');
    // Artisan::call('key:generate');
    return "Cleared!";
});

// Auth::routes();
Auth::routes([
    'login' => true,
    'register' => false, // Registration Routes...
    'reset' => false, // Password Reset Routes...
    'verify' => false, // Email Verification Routes...
]);

Route::middleware([CheckUserType::class])->group(function(){
    Route::get('/home', [HomeController::class, 'index'])->name('home');
    Route::get('/clear/cache', [HomeController::class, 'clearCache'])->name('ClearCache');
    Route::get('/change/password/page', [HomeController::class, 'changePasswordPage'])->name('changePasswordPage');
    Route::post('/change/password', [HomeController::class, 'changePassword'])->name('changePassword');
    Route::get('ckeditor', [CkeditorController::class, 'index']);
    Route::post('ckeditor/upload', [CkeditorController::class, 'upload'])->name('ckeditor.upload');
});


// payment routes start
Route::get('sslcommerz/order/payment', [PaymentController::class, 'orderPayment'])->name('order.payment');
Route::post('sslcommerz/success', [PaymentController::class, 'success'])->name('payment.success');
Route::post('sslcommerz/failure', [PaymentController::class, 'failure'])->name('failure');
Route::post('sslcommerz/cancel', [PaymentController::class, 'cancel'])->name('cancel');
Route::post('sslcommerz/ipn', [PaymentController::class, 'ipn'])->name('payment.ipn');
// payment routes end


// file manager routes start
Route::get('/file-manager', function () {
    return view('backend.file_manager');
})->middleware(['auth']);

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
// file manager routes end


require 'configRoutes.php';
require 'systemRoutes.php';


Route::group(['middleware' => ['auth', 'CheckUserType']], function () {

    Route::get('/view/payment/history', [HomeController::class, 'viewPaymentHistory'])->name('ViewPaymentHistory');
    Route::get('/mobile/app/config', [HomeController::class, 'mobileAppConfig'])->name('MobileAppConfig');
    Route::post('/update/mobile/app/config', [HomeController::class, 'updateMobileAppConfig'])->name('UpdateMobileAppConfig');

    // category routes
    Route::get('/add/new/category', [CategoryController::class, 'addNewCategory'])->name('AddNewCategory');
    Route::post('/save/new/category', [CategoryController::class, 'saveNewCategory'])->name('SaveNewCategory');
    Route::get('/view/all/category', [CategoryController::class, 'viewAllCategory'])->name('ViewAllCategory');
    Route::get('/delete/category/{slug}', [CategoryController::class, 'deleteCategory'])->name('DeleteCategory');
    Route::get('/feature/category/{slug}', [CategoryController::class, 'featureCategory'])->name('FeatureCategory');
    Route::get('/edit/category/{slug}', [CategoryController::class, 'editCategory'])->name('EditCategory');
    Route::post('/update/category', [CategoryController::class, 'updateCategory'])->name('UpdateCategory');
    Route::get('/rearrange/category', [CategoryController::class, 'rearrangeCategory'])->name('RearrangeCategory');
    Route::post('/save/rearranged/order', [CategoryController::class, 'saveRearrangeCategoryOrder'])->name('SaveRearrangeCategoryOrder');


    // subcategory routes
    Route::get('/add/new/subcategory', [SubcategoryController::class, 'addNewSubcategory'])->name('AddNewSubcategory');
    Route::post('/save/new/subcategory', [SubcategoryController::class, 'saveNewSubcategory'])->name('SaveNewSubcategory');
    Route::get('/view/all/subcategory', [SubcategoryController::class, 'viewAllSubcategory'])->name('ViewAllSubcategory');
    Route::get('/delete/subcategory/{slug}', [SubcategoryController::class, 'deleteSubcategory'])->name('DeleteSubcategory');
    Route::get('/feature/subcategory/{id}', [SubcategoryController::class, 'featureSubcategory'])->name('FeatureSubcategory');
    Route::get('/edit/subcategory/{slug}', [SubcategoryController::class, 'editSubcategory'])->name('EditSubcategory');
    Route::post('/update/subcategory', [SubcategoryController::class, 'updateSubcategory'])->name('UpdateSubcategory');


    // childcategory routes
    Route::get('/add/new/childcategory', [ChildCategoryController::class, 'addNewChildcategory'])->name('AddNewChildcategory');
    Route::post('/category/wise/subcategory', [ChildCategoryController::class, 'subcategoryCategoryWise'])->name('SubcategoryCategoryWise');
    Route::post('/save/new/childcategory', [ChildCategoryController::class, 'saveNewChildcategory'])->name('SaveNewChildcategory');
    Route::get('/view/all/childcategory', [ChildCategoryController::class, 'viewAllChildcategory'])->name('ViewAllChildcategory');
    Route::get('/delete/childcategory/{slug}', [ChildCategoryController::class, 'deleteChildcategory'])->name('DeleteChildcategory');
    Route::get('/edit/childcategory/{slug}', [ChildCategoryController::class, 'editChildcategory'])->name('EditChildcategory');
    Route::post('/update/childcategory', [ChildCategoryController::class, 'updateChildcategory'])->name('UpdateChildcategory');


    // product routes
    Route::get('/add/new/product', [ProductController::class, 'addNewProduct'])->name('AddNewProduct');
    Route::post('/subcategory/wise/childcategory', [ProductController::class, 'childcategorySubcategoryWise'])->name('ChildcategorySubcategoryWise');
    Route::post('/save/new/product', [ProductController::class, 'saveNewProduct'])->name('SaveNewProduct');
    Route::get('/view/all/product', [ProductController::class, 'viewAllProducts'])->name('ViewAllProducts');
    Route::get('/delete/product/{slug}', [ProductController::class, 'deleteProduct'])->name('DeleteProduct');
    Route::get('/edit/product/{slug}', [ProductController::class, 'editProduct'])->name('EditProduct');
    Route::post('/update/product', [ProductController::class, 'updateProduct'])->name('UpdateProduct');
    Route::post('/add/another/variant', [ProductController::class, 'addAnotherVariant'])->name('AddAnotherVariant');
    Route::get('/delete/product/variant/{id}', [ProductController::class, 'deleteProductVariant'])->name('DeleteProductVariant');
    // demo products route
    Route::get('generate/demo/products', [ProductController::class, 'generateDemoProducts'])->name('GenerateDemoProducts');
    Route::post('save/generated/demo/products', [ProductController::class, 'saveGeneratedDemoProducts'])->name('SaveGeneratedDemoProducts');
    Route::get('remove/demo/products/page', [ProductController::class, 'removeDemoProductsPage'])->name('RemoveDemoProductsPage');
    Route::get('remove/demo/products', [ProductController::class, 'removeDemoProducts'])->name('RemoveDemoProducts');


    // product review
    Route::get('/view/product/reviews', [ProductController::class, 'viewAllProductReviews'])->name('ViewAllProductReviews');
    Route::get('/approve/product/review/{slug}', [ProductController::class, 'approveProductReview'])->name('ApproveProductReview');
    Route::get('/delete/product/review/{slug}', [ProductController::class, 'deleteProductReview'])->name('DeleteProductReview');
    Route::get('/get/product/review/info/{id}', [ProductController::class, 'getProductReviewInfo'])->name('GetProductReviewInfo');
    Route::post('/submit/reply/product/review', [ProductController::class, 'submitReplyOfProductReview'])->name('SubmitReplyOfProductReview');


    // product question answer
    Route::get('/view/product/question/answer', [ProductController::class, 'viewAllQuestionAnswer'])->name('ViewAllQuestionAnswer');
    Route::get('/delete/question/answer/{id}', [ProductController::class, 'deleteQuestionAnswer'])->name('DeleteQuestionAnswer');
    Route::get('/get/question/answer/info/{id}', [ProductController::class, 'getQuestionAnswerInfo'])->name('GetQuestionAnswerInfo');
    Route::post('/submit/question/answer', [ProductController::class, 'submitAnswerOfQuestion'])->name('SubmitAnswerOfQuestion');


    // terms and policies routes
    Route::get('/terms/and/condition', [TermsAndPolicyController::class, 'viewTermsAndCondition'])->name('ViewTermsAndCondition');
    Route::post('/update/terms', [TermsAndPolicyController::class, 'updateTermsAndCondition'])->name('UpdateTermsAndCondition');
    Route::get('/view/privacy/policy', [TermsAndPolicyController::class, 'viewPrivacyPolicy'])->name('ViewPrivacyPolicy');
    Route::post('/update/privacy/policy', [TermsAndPolicyController::class, 'updatePrivacyPolicy'])->name('UpdatePrivacyPolicy');
    Route::get('/view/shipping/policy', [TermsAndPolicyController::class, 'viewShippingPolicy'])->name('ViewShippingPolicy');
    Route::post('/update/shipping/policy', [TermsAndPolicyController::class, 'updateShippingPolicy'])->name('UpdateShippingPolicy');
    Route::get('/view/return/policy', [TermsAndPolicyController::class, 'viewReturnPolicy'])->name('ViewReturnPolicy');
    Route::post('/update/return/policy', [TermsAndPolicyController::class, 'updateReturnPolicy'])->name('UpdateReturnPolicy');


    // customers and system users routes
    Route::get('/view/all/customers', [UserController::class, 'viewAllCustomers'])->name('ViewAllCustomers');
    Route::get('/view/system/users', [UserController::class, 'viewAllSystemUsers'])->name('ViewAllSystemUsers');
    Route::get('/add/new/system/user', [UserController::class, 'addNewSystemUsers'])->name('AddNewSystemUsers');
    Route::post('/create/system/user', [UserController::class, 'createSystemUsers'])->name('CreateSystemUsers');
    Route::get('/edit/system/user/{id}', [UserController::class, 'editSystemUser'])->name('EditSystemUser');
    Route::get('/delete/system/user/{id}', [UserController::class, 'deleteSystemUser'])->name('DeleteSystemUser');
    Route::post('/update/system/user', [UserController::class, 'updateSystemUser'])->name('UpdateSystemUser');
    Route::get('make/user/superadmin/{id}', [UserController::class, 'makeSuperAdmin'])->name('MakeSuperAdmin');
    Route::get('revoke/user/superadmin/{id}', [UserController::class, 'revokeSuperAdmin'])->name('RevokeSuperAdmin');
    Route::get('/change/user/status/{id}', [UserController::class, 'changeUserStatus'])->name('ChangeUserStatus');
    Route::get('/delete/customer/{id}', [UserController::class, 'deleteCustomer'])->name('DeleteCustomer');
    Route::get('download/customer/excel', [UserController::class, 'downloadCustomerExcel'])->name('DownloadCustomerExcel');


    // general info routes
    Route::get('/about/us/page', [GeneralInfoController::class, 'aboutUsPage'])->name('AboutUsPage');
    Route::post('/update/about/us', [GeneralInfoController::class, 'updateAboutUsPage'])->name('UpdateAboutUsPage');
    Route::get('/general/info', [GeneralInfoController::class, 'generalInfo'])->name('GeneralInfo');
    Route::post('/update/general/info', [GeneralInfoController::class, 'updateGeneralInfo'])->name('UpdateGeneralInfo');
    Route::get('/website/theme/page', [GeneralInfoController::class, 'websiteThemePage'])->name('WebsiteThemePage');
    Route::post('/update/website/theme/color', [GeneralInfoController::class, 'updateWebsiteThemeColor'])->name('UpdateWebsiteThemeColor');
    Route::get('/social/media/page', [GeneralInfoController::class, 'socialMediaPage'])->name('SocialMediaPage');
    Route::post('/update/social/media/link', [GeneralInfoController::class, 'updateSocialMediaLinks'])->name('UpdateSocialMediaLinks');
    Route::get('/seo/homepage', [GeneralInfoController::class, 'seoHomePage'])->name('SeoHomePage');
    Route::post('/update/seo/homepage', [GeneralInfoController::class, 'updateSeoHomePage'])->name('UpdateSeoHomePage');
    Route::get('/custom/css/js', [GeneralInfoController::class, 'customCssJs'])->name('CustomCssJs');
    Route::post('/update/custom/css/js', [GeneralInfoController::class, 'updateCustomCssJs'])->name('UpdateCustomCssJs');
    Route::get('/social/chat/script/page', [GeneralInfoController::class, 'socialChatScriptPage'])->name('SocialChatScriptPage');
    Route::post('/update/google/recaptcha', [GeneralInfoController::class, 'updateGoogleRecaptcha'])->name('UpdateGoogleRecaptcha');
    Route::post('/update/google/analytic', [GeneralInfoController::class, 'updateGoogleAnalytic'])->name('UpdateGoogleAnalytic');
    Route::post('/update/google/tag/manager', [GeneralInfoController::class, 'updateGoogleTagManager'])->name('updateGoogleTagManager');
    Route::post('/update/social/login/info', [GeneralInfoController::class, 'updateSocialLogin'])->name('UpdateSocialLogin');
    Route::post('/update/facebook/pixel', [GeneralInfoController::class, 'updateFacebookPixel'])->name('UpdateFacebookPixel');
    Route::post('/update/messenger/chat/info', [GeneralInfoController::class, 'updateMessengerChat'])->name('UpdateMessengerChat');
    Route::post('/update/tawk/chat/info', [GeneralInfoController::class, 'updateTawkChat'])->name('UpdateTawkChat');
    Route::post('/update/crisp/chat/info', [GeneralInfoController::class, 'updateCrispChat'])->name('UpdateCrispChat');


    // faq routes
    Route::get('/view/all/faqs', [FaqController::class, 'viewAllFaqs'])->name('ViewAllFaqs');
    Route::get('/add/new/faq', [FaqController::class, 'addNewFaq'])->name('AddNewFaq');
    Route::post('/save/faq', [FaqController::class, 'saveFaq'])->name('SaveFaq');
    Route::get('/delete/faq/{slug}', [FaqController::class, 'deleteFaq'])->name('DeleteFaq');
    Route::get('/edit/faq/{slug}', [FaqController::class, 'editFaq'])->name('EditFaq');
    Route::post('/update/faq', [FaqController::class, 'updateFaq'])->name('UpdateFaq');


    // sliders and banners routes
    Route::get('/view/all/sliders', [BannerController::class, 'viewAllSliders'])->name('ViewAllSliders');
    Route::get('/add/new/slider', [BannerController::class, 'addNewSlider'])->name('AddNewSlider');
    Route::post('/save/new/slider', [BannerController::class, 'saveNewSlider'])->name('SaveNewSlider');
    Route::get('/edit/slider/{slug}', [BannerController::class, 'editSlider'])->name('EditSlider');
    Route::post('/update/slider', [BannerController::class, 'updateSlider'])->name('UpdateSlider');
    Route::get('/rearrange/slider', [BannerController::class, 'rearrangeSlider'])->name('RearrangeSlider');
    Route::post('/update/slider/rearranged/order', [BannerController::class, 'updateRearrangedSliders'])->name('UpdateRearrangedSliders');
    Route::get('/delete/data/{slug}', [BannerController::class, 'deleteData'])->name('DeleteSliderBanner');
    Route::get('/view/all/banners', [BannerController::class, 'viewAllBanners'])->name('ViewAllBanners');
    Route::get('/add/new/banner', [BannerController::class, 'addNewBanner'])->name('AddNewBanner');
    Route::post('/save/new/banner', [BannerController::class, 'saveNewBanner'])->name('SaveNewBanner');
    Route::get('/edit/banner/{slug}', [BannerController::class, 'editBanner'])->name('EditBanner');
    Route::post('/update/banner', [BannerController::class, 'updateBanner'])->name('UpdateBanner');
    Route::get('/rearrange/banners', [BannerController::class, 'rearrangeBanners'])->name('RearrangeBanners');
    Route::post('/update/banners/rearranged/order', [BannerController::class, 'updateRearrangedBanners'])->name('UpdateRearrangedBanners');
    Route::get('/view/promotional/banner', [BannerController::class, 'viewPromotionalBanner'])->name('ViewPromotionalBanner');
    Route::post('/update/promotional/banner', [BannerController::class, 'updatePromotionalBanner'])->name('UpdatePromotionalBanner');
    Route::get('/remove/promotional/banner/header/icon', [BannerController::class, 'removePromotionalHeaderIcon'])->name('RemovePromotionalHeaderIcon');
    Route::get('/remove/promotional/banner/product/image', [BannerController::class, 'removePromotionalProductImage'])->name('RemovePromotionalProductImage');
    Route::get('/remove/promotional/banner/bg/image', [BannerController::class, 'removePromotionalBackgroundImage'])->name('RemovePromotionalBackgroundImage');


    // contact request routes
    Route::get('/view/all/contact/requests', [ContactRequestontroller::class, 'viewAllContactRequests'])->name('ViewAllContactRequests');
    Route::get('/delete/contact/request/{id}', [ContactRequestontroller::class, 'deleteContactRequests'])->name('DeleteContactRequests');
    Route::get('/change/request/status/{id}', [ContactRequestontroller::class, 'changeRequestStatus'])->name('ChangeRequestStatus');


    // order routes
    Route::get('/view/orders', [OrderController::class, 'viewAllOrders'])->name('ViewAllOrders');
    Route::get('/view/pending/orders', [OrderController::class, 'viewPendigOrders'])->name('ViewPendigOrders');
    Route::get('/view/approved/orders', [OrderController::class, 'viewApprovedOrders'])->name('ViewApprovedOrders');
    Route::get('/view/delivered/orders', [OrderController::class, 'viewDeliveredOrders'])->name('ViewDeliveredOrders');
    Route::get('/view/cancelled/orders', [OrderController::class, 'viewCancelledOrders'])->name('ViewCancelledOrders');
    Route::get('/order/details/{slug}', [OrderController::class, 'orderDetails'])->name('OrderDetails');
    Route::get('/cancel/order/{slug}', [OrderController::class, 'cancelOrder'])->name('CancelOrder');
    Route::get('/approve/order/{slug}', [OrderController::class, 'approveOrder'])->name('ApproveOrder');
    Route::get('/intransit/order/{slug}', [OrderController::class, 'intransitOrder'])->name('IntransitOrder');
    Route::get('/deliver/order/{slug}', [OrderController::class, 'deliverOrder'])->name('DeliverOrder');
    Route::post('/order/info/update', [OrderController::class, 'orderInfoUpdate'])->name('OrderInfoUpdate');
    Route::get('/order/edit/{slug}', [OrderController::class, 'orderEdit'])->name('OrderEdit');
    Route::post('/order/update', [OrderController::class, 'orderUpdate'])->name('OrderUpdate');
    Route::post('/add/more/product', [OrderController::class, 'addMoreProduct'])->name('AddMoreProduct');
    Route::post('/get/product/variants', [OrderController::class, 'getProductVariants'])->name('GetProductVariants');
    Route::get('delete/order/{slug}', [OrderController::class, 'deleteOrder'])->name('DeleteOrder');


    // promo codes
    Route::get('/add/new/code', [PromoCodeController::class, 'addPromoCode'])->name('AddPromoCode');
    Route::post('/save/promo/code', [PromoCodeController::class, 'savePromoCode'])->name('SavePromoCode');
    Route::get('/view/all/promo/codes', [PromoCodeController::class, 'viewAllPromoCodes'])->name('ViewAllPromoCodes');
    Route::get('/edit/promo/code/{slug}', [PromoCodeController::class, 'editPromoCode'])->name('EditPromoCode');
    Route::post('/update/promo/code', [PromoCodeController::class, 'updatePromoCode'])->name('UpdatePromoCode');
    Route::get('/remove/promo/code/{slug}', [PromoCodeController::class, 'removePromoCode'])->name('RemovePromoCode');

    // wishlist routes
    Route::get('/view/customers/wishlist', [WishListController::class, 'customersWishlist'])->name('CustomersWishlist');


    // support ticket routes
    Route::get('/pending/support/tickets', [SupportTicketController::class, 'pendingSupportTickets'])->name('PendingSupportTickets');
    Route::get('/solved/support/tickets', [SupportTicketController::class, 'solvedSupportTickets'])->name('SolvedSupportTickets');
    Route::get('/on/hold/support/tickets', [SupportTicketController::class, 'onHoldSupportTickets'])->name('OnHoldSupportTickets');
    Route::get('/rejected/support/tickets', [SupportTicketController::class, 'rejectedSupportTickets'])->name('RejectedSupportTickets');
    Route::get('/delete/support/ticket/{slug}', [SupportTicketController::class, 'deleteSupportTicket'])->name('DeleteSupportTicket');
    Route::get('/support/status/change/{slug}', [SupportTicketController::class, 'changeStatusSupport'])->name('ChangeStatusSupport');
    Route::get('/support/status/on/hold/{slug}', [SupportTicketController::class, 'changeStatusSupportOnHold'])->name('ChangeStatusSupportOnHold');
    Route::get('/support/status/in/progress/{slug}', [SupportTicketController::class, 'changeStatusSupportInProgress'])->name('ChangeStatusSupportInProgress');
    Route::get('/support/status/rejected/{slug}', [SupportTicketController::class, 'changeStatusSupportRejected'])->name('ChangeStatusSupportRejected');
    Route::get('/view/support/messages/{slug}', [SupportTicketController::class, 'viewSupportMessage'])->name('ViewSupportMessage');
    Route::post('/send/support/message', [SupportTicketController::class, 'sendSupportMessage'])->name('SendSupportMessage');


    // testimonial routes
    Route::get('/view/testimonials', [TestimonialController::class, 'viewTestimonials'])->name('ViewTestimonials');
    Route::get('/add/testimonial', [TestimonialController::class, 'addTestimonial'])->name('AddTestimonial');
    Route::post('/save/testimonial', [TestimonialController::class, 'saveTestimonial'])->name('SaveTestimonial');
    Route::get('/delete/testimonial/{slug}', [TestimonialController::class, 'deleteTestimonial'])->name('DeleteTestimonial');
    Route::get('/edit/testimonial/{slug}', [TestimonialController::class, 'editTestimonial'])->name('EditTestimonial');
    Route::post('/update/testimonial', [TestimonialController::class, 'updateTestimonial'])->name('UpdateTestimonial');


    // subscribed users routes
    Route::get('/view/all/subscribed/users', [SubscribedUsersController::class, 'viewAllSubscribedUsers'])->name('ViewAllSubscribedUsers');
    Route::get('/delete/subcribed/users/{id}', [SubscribedUsersController::class, 'deleteSubscribedUsers'])->name('DeleteSubscribedUsers');
    Route::get('/download/subscribed/users/excel', [SubscribedUsersController::class, 'downloadSubscribedUsersExcel'])->name('DownloadSubscribedUsersExcel');


    // backup download
    Route::get('/download/database/backup', [BackupController::class, 'downloadDBBackup'])->name('DownloadDBBackup');
    Route::get('/download/product/files/backup', [BackupController::class, 'downloadProductFilesBackup'])->name('DownloadProductFilesBackup');
    Route::get('/download/user/files/backup', [BackupController::class, 'downloadUserFilesBackup'])->name('DownloadUserFilesBackup');
    Route::get('/download/banner/files/backup', [BackupController::class, 'downloadBannerFilesBackup'])->name('DownloadBannerFilesBackup');
    Route::get('/download/category/files/backup', [BackupController::class, 'downloadCategoryFilesBackup'])->name('DownloadCategoryFilesBackup');
    Route::get('/download/subcategory/files/backup', [BackupController::class, 'downloadSubcategoryFilesBackup'])->name('DownloadSubcategoryFilesBackup');
    Route::get('/download/flag/files/backup', [BackupController::class, 'downloadFlagFilesBackup'])->name('DownloadFlagFilesBackup');
    Route::get('/download/ticket/files/backup', [BackupController::class, 'downloadTicketFilesBackup'])->name('DownloadTicketFilesBackup');
    Route::get('/download/blog/files/backup', [BackupController::class, 'downloadBlogFilesBackup'])->name('DownloadBlogFilesBackup');
    Route::get('/download/other/files/backup', [BackupController::class, 'downloadOtherFilesBackup'])->name('DownloadOtherFilesBackup');


    // push notification
    Route::get('/send/notification/page', [NotificationController::class, 'sendNotificationPage'])->name('SendNotificationPage');
    Route::get('/view/all/notifications', [NotificationController::class, 'viewAllNotifications'])->name('ViewAllNotifications');
    Route::get('/delete/notification/{id}', [NotificationController::class, 'deleteNotification'])->name('DeleteNotification');
    Route::get('/delete/notification/with/range', [NotificationController::class, 'deleteNotificationRangeWise'])->name('DeleteNotificationRangeWise');
    Route::post('/send/push/notification', [NotificationController::class, 'sendPushNotification'])->name('SendPushNotification');


    // sms service
    Route::get('/view/sms/templates', [SmsServiceController::class, 'viewSmsTemplates'])->name('ViewSmsTemplates');
    Route::get('/create/sms/template', [SmsServiceController::class, 'createSmsTemplate'])->name('CreateSmsTemplate');
    Route::post('/save/sms/template', [SmsServiceController::class, 'saveSmsTemplate'])->name('SaveSmsTemplate');
    Route::get('get/sms/template/info/{id}', [SmsServiceController::class, 'getSmsTemplateInfo'])->name('GetSmsTemplateInfo');
    Route::get('delete/sms/template/{id}', [SmsServiceController::class, 'deleteSmsTemplate'])->name('DeleteSmsTemplate');
    Route::get('/send/sms/page', [SmsServiceController::class, 'sendSmsPage'])->name('SendSmsPage');
    Route::post('/get/template/description', [SmsServiceController::class, 'getTemplateDescription'])->name('GetTemplateDescription');
    Route::post('/update/sms/template', [SmsServiceController::class, 'updateSmsTemplate'])->name('UpdateSmsTemplate');
    Route::post('/send/sms', [SmsServiceController::class, 'sendSms'])->name('SendSms');
    Route::get('/view/sms/history', [SmsServiceController::class, 'viewSmsHistory'])->name('ViewSmsHistory');
    Route::get('/delete/sms/with/range', [SmsServiceController::class, 'deleteSmsHistoryRange'])->name('DeleteSmsHistoryRange');
    Route::get('/delete/sms/{id}', [SmsServiceController::class, 'deleteSmsHistory'])->name('DeleteSmsHistory');


    // blog routes
    Route::get('/blog/categories', [BlogController::class, 'blogCategories'])->name('BlogCategories');
    Route::post('/save/blog/category', [BlogController::class, 'saveBlogCategory'])->name('SaveBlogCategory');
    Route::get('/delete/blog/category/{slug}', [BlogController::class, 'deleteBlogCategory'])->name('DeleteBlogCategory');
    Route::get('/feature/blog/category/{slug}', [BlogController::class, 'featureBlogCategory'])->name('FeatureBlogCategory');
    Route::get('/get/blog/category/info/{slug}', [BlogController::class, 'getBlogCategoryInfo'])->name('GetBlogCategoryInfo');
    Route::post('/update/blog/category', [BlogController::class, 'updateBlogCategoryInfo'])->name('UpdateBlogCategoryInfo');
    Route::get('/rearrange/blog/category', [BlogController::class, 'rearrangeBlogCategory'])->name('RearrangeBlogCategory');
    Route::post('/save/rearranged/blog/categories', [BlogController::class, 'saveRearrangeCategory'])->name('SaveRearrangeCategory');
    Route::get('/add/new/blog', [BlogController::class, 'addNewBlog'])->name('AddNewBlog');
    Route::post('/save/new/blog', [BlogController::class, 'saveNewBlog'])->name('SaveNewBlog');
    Route::get('/view/all/blogs', [BlogController::class, 'viewAllBlogs'])->name('ViewAllBlogs');
    Route::get('/delete/blog/{slug}', [BlogController::class, 'deleteBlog'])->name('DeleteBlog');
    Route::get('/edit/blog/{slug}', [BlogController::class, 'editBlog'])->name('EditBlog');
    Route::post('/update/blog', [BlogController::class, 'updateBlog'])->name('UpdateBlog');


    // delivery charges
    Route::get('/view/delivery/charges', [DeliveryChargeController::class, 'viewAllDeliveryCharges'])->name('ViewAllDeliveryCharges');
    Route::get('/get/delivery/charge/{id}', [DeliveryChargeController::class, 'getDeliveryCharge'])->name('GetDeliveryCharge');
    Route::post('/update/delivery/charge', [DeliveryChargeController::class, 'updateDeliveryCharge'])->name('UpdateDeliveryCharge');

    // upazaila thana
    Route::get('view/upazila/thana', [DeliveryChargeController::class, 'viewUpazilaThana'])->name('ViewUpazilaThana');
    Route::get('get/upazila/info/{id}', [DeliveryChargeController::class, 'getUpazilaInfo'])->name('getUpazilaInfo');
    Route::post('update/upazila/info', [DeliveryChargeController::class, 'updateUpazilaInfo'])->name('UpdateUpazilaInfo');
    Route::post('save/new/upazila', [DeliveryChargeController::class, 'saveNewUpazila'])->name('SaveNewUpazila');
    Route::get('delete/upazila/{id}', [DeliveryChargeController::class, 'deleteUpazila'])->name('DeleteUpazila');


    // custom page
    Route::get('create/new/page', [CustomPageController::class, 'createNewPage'])->name('CreateNewPage');
    Route::post('save/custom/page', [CustomPageController::class, 'saveCustomPage'])->name('SaveCustomPage');
    Route::get('view/all/pages', [CustomPageController::class, 'viewCustomPages'])->name('ViewCustomPages');
    Route::get('delete/custom/page/{slug}', [CustomPageController::class, 'deleteCustomPage'])->name('DeleteCustomPage');
    Route::get('edit/custom/page/{slug}', [CustomPageController::class, 'editCustomPage'])->name('EditCustomPage');
    Route::post('update/custom/page', [CustomPageController::class, 'updateCustomPage'])->name('UpdateCustomPage');


    // services
    Route::get('service/config', [ServiceController::class, 'serviceConfig'])->name('ServiceConfig');
    Route::get('edit/service/{id}', [ServiceController::class, 'editService'])->name('EditService');
    Route::post('update/service/config', [ServiceController::class, 'updateService'])->name('UpdateService');


    // nursing service
    Route::get('nursing/service/types', [ServiceController::class, 'nursingServiceTypes'])->name('NursingServiceTypes');
    Route::post('save/nursing/service/type', [ServiceController::class, 'saveNursingServiceType'])->name('SaveNursingServiceType');
    Route::get('delete/nursing/service/{id}', [ServiceController::class, 'deleteNursingServiceType'])->name('DeleteNursingServiceType');
    Route::get('get/nursing/service/info/{id}', [ServiceController::class, 'getNursingServiceInfo'])->name('GetNursingServiceInfo');
    Route::post('update/nursing/service', [ServiceController::class, 'updateNursingService'])->name('UpdateNursingService');
    Route::get('nursing/service/requests', [ServiceController::class, 'nursingServiceRequests'])->name('NursingServiceRequests');
    Route::get('delete/nursing/service/request/{id}', [ServiceController::class, 'deleteNursingServiceRequest'])->name('DeleteNursingServiceRequest');
    Route::get('approve/nursing/service/request/{id}', [ServiceController::class, 'approveNursingServiceRequest'])->name('ApproveNursingServiceRequest');
    Route::get('cancel/nursing/service/request/{id}', [ServiceController::class, 'cancelNursingServiceRequest'])->name('CancelNursingServiceRequest');
    Route::get('complete/nursing/service/request/{id}', [ServiceController::class, 'completeNursingServiceRequest'])->name('CompleteNursingServiceRequest');

    // prescription services
    Route::get('view/uploaded/prescriptions', [ServiceController::class, 'viewUploadedPrescriptions'])->name('ViewUploadedPrescriptions');
    Route::get('delete/uploaded/prescription/{id}', [ServiceController::class, 'deleteUploadedPrescription'])->name('DeleteUploadedPrescription');
    Route::get('approve/uploaded/prescription/{id}', [ServiceController::class, 'approveUploadedPrescription'])->name('ApproveUploadedPrescription');
    Route::get('cancel/uploaded/prescription/{id}', [ServiceController::class, 'cancelUploadedPrescription'])->name('CancelUploadedPrescription');
    Route::get('complete/uploaded/prescription/{id}', [ServiceController::class, 'completeUploadedPrescription'])->name('CompleteUploadedPrescription');
    Route::get('deliver/uploaded/prescription/{id}', [ServiceController::class, 'deliverUploadedPrescription'])->name('DeliverUploadedPrescription');

    // medicine services
    Route::get('view/medicine/requests', [ServiceController::class, 'viewMedicineRequests'])->name('ViewMedicineRequests');
    Route::get('delete/medicine/request/{id}', [ServiceController::class, 'deleteMedicineRequest'])->name('DeleteMedicineRequest');
    Route::get('approve/medicine/request/{id}', [ServiceController::class, 'approveMedicineRequest'])->name('ApproveMedicineRequest');
    Route::get('cancel/medicine/request/{id}', [ServiceController::class, 'cancelMedicineRequest'])->name('CancelMedicineRequest');
    Route::get('complete/medicine/request/{id}', [ServiceController::class, 'completeMedicineRequest'])->name('CompleteMedicineRequest');
    Route::get('deliver/medicine/request/{id}', [ServiceController::class, 'deliverMedicineRequest'])->name('DeliverMedicineRequest');
    Route::get('get/medicine/request/items/{id}', [ServiceController::class, 'getMedicineRequestItems'])->name('GetMedicineRequestItems');


    // doctor service
    Route::get('add/new/doctor', [DoctorController::class, 'addNewDoctor'])->name('AddNewDoctor');
    Route::post('save/doctor', [DoctorController::class, 'saveNewDoctor'])->name('SaveNewDoctor');
    Route::get('view/all/doctors', [DoctorController::class, 'viewAllDoctors'])->name('ViewAllDoctors');
    Route::get('delete/doctor/{slug}', [DoctorController::class, 'deleteDoctor'])->name('DeleteDoctor');
    Route::get('edit/doctor/{slug}', [DoctorController::class, 'editDoctor'])->name('EditDoctor');
    Route::post('update/doctor', [DoctorController::class, 'updateDoctor'])->name('UpdateDoctor');


    // generate report
    Route::get('sales/report', [ReportController::class, 'salesReport'])->name('SalesReport');
    Route::post('generate/sales/report', [ReportController::class, 'generateSalesReport'])->name('GenerateSalesReport');


    // user role permission routes
    Route::get('/view/permission/routes', [PermissionRoutesController::class, 'viewAllPermissionRoutes'])->name('ViewAllPermissionRoutes');
    Route::get('/regenerate/permission/routes', [PermissionRoutesController::class, 'regeneratePermissionRoutes'])->name('RegeneratePermissionRoutes');
    Route::get('/view/user/roles', [UserRoleController::class, 'viewAllUserRoles'])->name('ViewAllUserRoles');
    Route::get('/new/user/role', [UserRoleController::class, 'newUserRole'])->name('NewUserRole');
    Route::post('save/user/role', [UserRoleController::class, 'saveUserRole'])->name('SaveUserRole');
    Route::get('/delete/user/role/{id}', [UserRoleController::class, 'deleteUserRole'])->name('DeleteUserRole');
    Route::get('/edit/user/role/{id}', [UserRoleController::class, 'editUserRole'])->name('EditUserRole');
    Route::post('update/user/role', [UserRoleController::class, 'updateUserRole'])->name('UpdateUserRole');
    Route::get('/view/user/role/permission', [UserRoleController::class, 'viewUserRolePermission'])->name('ViewUserRolePermission');
    Route::get('/assign/role/permission/{id}', [UserRoleController::class, 'assignRolePermission'])->name('AssignRolePermission');
    Route::post('/save/assigned/role/permission', [UserRoleController::class, 'saveAssignedRolePermission'])->name('SaveAssignedRolePermission');

});
