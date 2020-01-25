.class Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShakeEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    return-void
.end method


# virtual methods
.method public isShake()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3202(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z

    return-void
.end method

.method public isSilent()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3202(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z

    return-void
.end method
