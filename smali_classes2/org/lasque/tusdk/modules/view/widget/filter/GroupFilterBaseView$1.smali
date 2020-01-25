.class Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->onDispatchGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    return p1
.end method
