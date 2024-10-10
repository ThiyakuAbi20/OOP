package Message;


public class Message {
		private String idmessage;
	    private String message;
	    private String time;
		public Message(String idmessage, String message, String time) {

			this.idmessage = idmessage;
			this.message = message;
			this.time = time;
		}

		public String getIdMessage() {
			return idmessage;
		}

		public String getMessage() {
			return message;
		}

		public String getTime() {
			return time;
		}

}
