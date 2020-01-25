.class final Lcom/freeme/elementscenter/provider/StatisticDBData$3;
.super Ljava/util/HashMap;
.source "StatisticDBData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/provider/StatisticDBData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.freeme.cameraplugin.childrenmode"

    const-string v1, "0207"

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/provider/StatisticDBData$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.freeme.cameraplugin.posemode"

    const-string v1, "0206"

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/provider/StatisticDBData$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.freeme.cameraplugin.watermarkmode"

    const-string v1, "0205"

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/provider/StatisticDBData$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.freeme.cameraplugin.largemode"

    const-string v1, "0204"

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/provider/StatisticDBData$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
