.class Lcom/freeme/camera/feature/setting/focus/Focus$10$1;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus$10;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/focus/Focus$10;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus$10;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$10$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$10$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$10;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/focus/Focus$10;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4600(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    return-void
.end method
