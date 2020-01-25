.class Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showFilterTable(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$1;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
