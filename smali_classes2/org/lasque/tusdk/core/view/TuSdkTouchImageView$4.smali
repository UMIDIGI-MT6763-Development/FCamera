.class Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$4;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$4;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->invalidateTargetView()V

    return-void
.end method
