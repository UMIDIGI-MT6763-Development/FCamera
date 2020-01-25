.class Lcom/freeme/camera/feature/setting/focus/Focus$9;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    move-result-object p2

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus$9;Landroid/graphics/RectF;)V

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
