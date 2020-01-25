.class Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;
.super Ljava/lang/Object;
.source "AaaRoiDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;

.field final synthetic val$newPreviewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->val$newPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->val$newPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->val$newPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->access$102(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;I)I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->val$newPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;->val$newPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->access$202(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;I)I

    return-void
.end method
