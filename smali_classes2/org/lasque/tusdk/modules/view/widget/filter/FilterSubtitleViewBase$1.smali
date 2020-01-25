.class Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$1;
.super Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->startScaleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$1;->a:Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$1;->a:Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;

    invoke-static {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
