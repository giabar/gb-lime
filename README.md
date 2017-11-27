# New LimeSurvey Docker image

> Based on giabar/gb-httpd image (httpd on CentOS)



Quick start:

```
docker run \
-d \
--name=limesurvey-web \
--link=limesurveydb \
giabar/gb-lime
