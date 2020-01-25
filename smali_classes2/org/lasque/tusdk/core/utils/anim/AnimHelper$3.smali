.class final Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;
.super Lorg/lasque/tusdk/core/listener/AnimationListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotate3dView(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->a:Landroid/view/View;

    iput p2, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->b:I

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->c:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/listener/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->a:Landroid/view/View;

    iget p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->b:I

    div-int/lit8 v1, p1, 0x2

    iget-object v5, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;->c:Landroid/view/animation/Animation$AnimationListener;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotate3dView(Landroid/view/View;IFFZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
