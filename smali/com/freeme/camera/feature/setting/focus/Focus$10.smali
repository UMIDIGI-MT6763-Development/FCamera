.class Lcom/freeme/camera/feature/setting/focus/Focus$10;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$10;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$10;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->setOrientation(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$10;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$10$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$10$1;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus$10;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
