.class Lorg/lasque/tusdk/core/secret/SdkValid$1;
.super Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/SdkValid;->checkAppAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/SdkValid;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/SdkValid;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/SdkValid$1;->a:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestedFailed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->getAppAuthActionFail:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/SdkValid$1;->a:Lorg/lasque/tusdk/core/secret/SdkValid;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Lorg/lasque/tusdk/core/secret/SdkValid;Z)V

    return-void
.end method

.method protected onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 7

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getJson()Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    move-result-object p1

    const-class v0, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->masterKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-wide v1, Lorg/lasque/tusdk/modules/components/ComponentActType;->getAppAuthActionSuccess:J

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->lastUpdatedDate:Ljava/util/Calendar;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v2

    const-string v3, "auth_updated_date"

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCacheLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseCalendar(J)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    if-eqz v5, :cond_2

    sget-wide v1, Lorg/lasque/tusdk/modules/components/ComponentActType;->updateAppAuthActionSuccess:J

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    const-string v2, "auth_updated_date"

    iget-object v3, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->lastUpdatedDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;J)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    const-string v2, "auth_check_date"

    iget-object v3, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->nextCheckDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;J)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    const-string v2, "latest_cached_master"

    iget-object v3, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->masterKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/TuSdkConfigResult;->masterKey:Ljava/lang/String;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Error while parsing lastest master config from sesrver"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-wide v1, Lorg/lasque/tusdk/modules/components/ComponentActType;->updateAppAuthActionFail:J

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/SdkValid$1;->a:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Lorg/lasque/tusdk/core/secret/SdkValid;Z)V

    return-void
.end method
