package com.copilot.sample.configuration;

import javax.jms.Queue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.copilot.sample.model.Trades;


@RestController
@RequestMapping("/mqProducer")
public class MQProducer {

    @Autowired
    private JmsTemplate jmsTemplate;

    @Autowired
    private Queue queue;
    
    @PostMapping
    public String sendMessageWithReply(@RequestBody String trades) {
        jmsTemplate.convertAndSend(queue, trades);
        return "Message sent to the Queue Successfully";
    }

}
