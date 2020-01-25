.class Lorg/lasque/tusdk/core/secret/StatisticsManger$3;
.super Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/StatisticsManger;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$3;->a:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestedFinish(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$3;->a:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$3;->a:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V

    return-void
.end method

.method protected onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 3

    const-string v0, "onRequestedSucceed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getJson()Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJson()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
