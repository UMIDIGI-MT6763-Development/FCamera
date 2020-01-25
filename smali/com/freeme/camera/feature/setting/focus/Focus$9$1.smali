.class Lcom/freeme/camera/feature/setting/focus/Focus$9$1;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus$9;->onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/focus/Focus$9;

.field final synthetic val$newPreviewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus$9;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$9;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;->val$newPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$9;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/focus/Focus$9;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$9$1;->val$newPreviewArea:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4500(Lcom/freeme/camera/feature/setting/focus/Focus;Landroid/graphics/RectF;)V

    return-void
.end method
