.class Lcom/freeme/camera/FilmstripView$ViewItem$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
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

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem$1;->this$1:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem$1;->this$1:Lcom/freeme/camera/FilmstripView$ViewItem;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    return-void
.end method
