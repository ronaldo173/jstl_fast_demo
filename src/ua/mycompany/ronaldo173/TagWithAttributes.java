package ua.mycompany.ronaldo173;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TagWithAttributes extends SimpleTagSupport {
	private String message;
	private StringWriter writer = new StringWriter();

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.jsp.tagext.SimpleTagSupport#doTag()
	 */
	@Override
	public void doTag() throws JspException, IOException {

		if (message != null) {
			JspWriter out = getJspContext().getOut();
			out.println(message + "<br>");

			getJspBody().invoke(writer);
			getJspContext().getOut().println(writer.toString());

		}

	}
}
