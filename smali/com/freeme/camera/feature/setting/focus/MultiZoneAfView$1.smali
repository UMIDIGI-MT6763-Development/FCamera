.class Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;
.super Ljava/lang/Object;
.source "MultiZoneAfView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->showWindows(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;->this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;->this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->access$002(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;F)F

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;->this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->access$000(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)F

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;->this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->access$100(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;->this$0:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->invalidate()V

    :cond_0
    return-void
.end method
