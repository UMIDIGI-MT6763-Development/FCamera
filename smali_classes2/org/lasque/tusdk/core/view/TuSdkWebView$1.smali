.class Lorg/lasque/tusdk/core/view/TuSdkWebView$1;
.super Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkWebView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;->a:Lorg/lasque/tusdk/core/view/TuSdkWebView;

    invoke-static {p2}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a(Lorg/lasque/tusdk/core/view/TuSdkWebView;)Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
