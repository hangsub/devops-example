package sample.web.ui.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import sample.web.ui.Health;

import java.util.Date;

@Controller
@RequestMapping("/health")
public class HealthController {
    private static Logger logger = LoggerFactory.getLogger(HealthController.class);

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public Health getHealth() {
        Health health = new Health();

        health.setCode(200);
        health.setMessage("success");
        health.setTime(new Date().getTime());

        logger.info("health called.");

        return health;
    }
}
