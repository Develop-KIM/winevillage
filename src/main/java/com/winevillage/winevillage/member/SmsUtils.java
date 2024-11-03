//package com.winevillage.winevillage.member;
//
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Component;
//
//import jakarta.annotation.PostConstruct;
//import net.nurigo.sdk.NurigoApp;
//import net.nurigo.sdk.message.model.Message;
//import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
//import net.nurigo.sdk.message.response.SingleMessageSentResponse;
//import net.nurigo.sdk.message.service.DefaultMessageService;
//import utils.SmsSendingException;
//
//@Component
//public class SmsUtils {
////
////    @Value("${coolsms.api.key}")
////    private String apiKey;
////    @Value("${coolsms.api.secret}")
////    private String apiSecretKey;
////    @Value("${coolsms.api.fromnumber}")
////    private String fromNumber;
//
//    private DefaultMessageService messageService;
//
//    @PostConstruct
//    private void init() {
//        this.messageService = NurigoApp.INSTANCE.initialize(apiKey, apiSecretKey, "https://api.coolsms.co.kr");
//    }
//
//    public SingleMessageSentResponse sendOne(String userPhoneNumber, int randomNumber) {
//        try {
//            Message message = new Message();
//            message.setFrom(fromNumber);
//            message.setTo(userPhoneNumber);
//            message.setText("[WineVillage] 아래의 인증 번호를 입력해주세요.\n" + randomNumber);
//
//            SingleMessageSentResponse response = this.messageService.sendOne(new SingleMessageSendingRequest(message));
//
//            return response;
//        } catch (Exception e) {
//            throw new SmsSendingException("SMS 전송 실패", e);
//        }
//    }
//}
