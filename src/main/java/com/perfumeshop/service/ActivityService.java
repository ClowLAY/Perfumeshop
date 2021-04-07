package com.perfumeshop.service;


import com.perfumeshop.entity.Activity;
import com.perfumeshop.entity.ActivityExample;

import java.util.List;

public interface ActivityService {
    List<Activity> getAllActivity(ActivityExample activityExample);

    void insertActivitySelective(Activity activity);

    Activity selectByKey(Integer activityid);

    void deleteByActivityId(Integer activityid);

//    void updateGoodsActSelective(Goods goods);
}
