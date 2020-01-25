.class Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;
.super Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkProgressBar;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;->a:Lorg/lasque/tusdk/core/view/TuSdkProgressBar;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;->a:Lorg/lasque/tusdk/core/view/TuSdkProgressBar;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->a(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;->a:Lorg/lasque/tusdk/core/view/TuSdkProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
