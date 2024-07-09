import java.util.LinkedList;
import java.util.Queue;

public class QueueEx {
    public static void main(String[] args) {
        Queue<Message> msgQueue = new LinkedList<>();
        msgQueue.offer(new Message("sendMail", "홍길동"));
        msgQueue.offer(new Message("sendSNS", "임꺽정"));
        msgQueue.offer(new Message("sendKakoTalk", "장보고"));

        while (!msgQueue.isEmpty()) {
            Message msg = msgQueue.poll();

            switch (msg.command) {
                case "sendMail":
                    System.out.println(msg.to + "님에게 메일을 보냅니다.");
                    break;

                case "sendSNS":
                    System.out.println(msg.to + "님에게 SNS를 보냅니다.");
                    break;

                case "sendKakoTalk":
                    System.out.println(msg.to + "님에게 카카오톡을 보냅니다.");
                    break;
            }
        }

    }
}
