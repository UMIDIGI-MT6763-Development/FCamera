.class public Lcom/freeme/camera/feature/setting/CsState;
.super Ljava/lang/Object;
.source "CsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/CsState$State;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCShotState:Lcom/freeme/camera/feature/setting/CsState$State;

.field private final mStateSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/CsState;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CsState;->mCShotState:Lcom/freeme/camera/feature/setting/CsState$State;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CsState;->mStateSync:Ljava/lang/Object;

    return-void
.end method

.method private checkState(Lcom/freeme/camera/feature/setting/CsState$State;Lcom/freeme/camera/feature/setting/CsState$State;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$1;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/CsState;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[checkState]Error!"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/CsState;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[checkState]Error!"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/CsState;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[checkState]Error!"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCShotState(Lcom/freeme/camera/feature/setting/CsState$State;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CsState;->mStateSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CsState;->mCShotState:Lcom/freeme/camera/feature/setting/CsState$State;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CsState;->mStateSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CsState;->mCShotState:Lcom/freeme/camera/feature/setting/CsState$State;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/setting/CsState;->checkState(Lcom/freeme/camera/feature/setting/CsState$State;Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/CsState;->setCShotState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    return-void
.end method
