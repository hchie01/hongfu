<?php
require  "./vendor/qcloudsms/src/index.php";

use Qcloud\Sms\SmsSingleSender;
use Qcloud\Sms\SmsMultiSender;
use Qcloud\Sms\SmsVoiceVerifyCodeSender;
use Qcloud\Sms\SmsVoicePromptSender;
use Qcloud\Sms\SmsStatusPuller;
use Qcloud\Sms\SmsMobileStatusPuller;

use Qcloud\Sms\VoiceFileUploader;
use Qcloud\Sms\FileVoiceSender;
use Qcloud\Sms\TtsVoiceSender;



class ControllerAccountMessage extends Controller {
 

	public function index($data) {
		$tel = isset($data['tel'])?$data['tel']:'';
		$num = isset($data['num'])?$data['num']:'';
		// 短信应用SDK AppID
		$appid = 1400108560; // 1400开头

		// 短信应用SDK AppKey
		$appkey = "f9926f0a843a5c5e019bd0e252c37948";

		// 需要发送短信的手机号码
		$phoneNumbers = $tel;

		// 短信模板ID，需要在短信应用中申请
		$templateId = 164397;  // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请

		// 签名
		$smsSign = "王亚雄"; // NOTE: 这里的签名只是示例，请使用真实的已申请的签名，签名参数使用的是`签名内容`，而不是`签名ID`

		 // 指定模板ID单发短信
		try {
			$ssender = new SmsSingleSender($appid, $appkey);
			$params = ["$num",'5'];
			$result = $ssender->sendWithParam("86", $phoneNumbers, $templateId,
				$params, $smsSign, "", "");  // 签名参数未提供或者为空时，会使用默认签名发送短信
			$rsp = json_decode($result);
			return $rsp;
		} catch(\Exception $e) {
			return var_dump($e);
		}
		 
	}

 
}