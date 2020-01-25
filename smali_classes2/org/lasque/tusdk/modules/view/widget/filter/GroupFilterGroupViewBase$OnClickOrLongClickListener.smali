.class Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickOrLongClickListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-boolean p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;->onGroupFilterGroupViewLongClick(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSafeClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->dispatcherViewClick(Landroid/view/View;)V

    return-void
.end method
