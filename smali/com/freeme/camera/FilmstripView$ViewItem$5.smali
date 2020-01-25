.class Lcom/freeme/camera/FilmstripView$ViewItem$5;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$ViewItem;->copyAttributes(Lcom/freeme/camera/FilmstripView$ViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem$5;->this$1:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem$5;->this$1:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationY(F)V

    return-void
.end method
