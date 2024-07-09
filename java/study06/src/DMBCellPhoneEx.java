public class DMBCellPhoneEx {
    public static void main(String[] args) {
        DMBCellPhone dmbCellPhone = new DMBCellPhone("자바폰", "검정", 10);
        
        System.out.println("모델: " + dmbCellPhone.model);
        System.out.println("색상: " + dmbCellPhone.color);
        System.out.println("채널: " + dmbCellPhone.channel);

        dmbCellPhone.powerOn();
        dmbCellPhone.bell();
        dmbCellPhone.sendVoice("여보세요??");
        dmbCellPhone.receiveVoice("안녕하세요. 손성준인데요..");
        dmbCellPhone.sendVoice("..... 잘못거셨습니다.");
        dmbCellPhone.hangUp();

        dmbCellPhone.turnOnDmb();
        dmbCellPhone.changeChannelDmb(20);
        dmbCellPhone.turnOffDmb();

        
    }

}
