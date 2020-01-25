.class Lcom/freeme/camera/FilmstripLayout$2;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout$2;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$2;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripLayout;->access$300(Lcom/freeme/camera/FilmstripLayout;F)V

    return-void
.end method
