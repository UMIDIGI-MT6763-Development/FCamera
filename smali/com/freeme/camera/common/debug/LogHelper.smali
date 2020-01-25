.class public Lcom/freeme/camera/common/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static ui(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CamUI] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogUtil;->isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
