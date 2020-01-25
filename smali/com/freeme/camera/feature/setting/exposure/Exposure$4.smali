.class Lcom/freeme/camera/feature/setting/exposure/Exposure$4;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;->setPanel(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;->val$on:Z

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$602(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)Z

    return-void
.end method
