.class Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$3;
.super Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$3;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
