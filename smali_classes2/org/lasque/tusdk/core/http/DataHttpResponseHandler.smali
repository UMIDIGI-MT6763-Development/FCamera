.class public abstract Lorg/lasque/tusdk/core/http/DataHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# static fields
.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 2

    if-gt p1, p2, :cond_1

    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    :try_start_0
    aget-object p1, p1, v0

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/DataHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "custom onProgressData contains an error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onProgressData([B)V
    .locals 1

    const-string p1, "onProgressData(byte[]) was not overriden, but callback was received"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/http/DataHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/DataHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
