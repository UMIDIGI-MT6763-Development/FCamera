.class public interface abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;
    }
.end annotation


# virtual methods
.method public abstract exitRemoveState()V
.end method

.method public abstract isRenderFilterThumb()Z
.end method

.method public abstract loadFilters()V
.end method

.method public abstract loadFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
.end method

.method public abstract setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setAutoSelectGroupDefaultFilter(Z)V
.end method

.method public abstract setDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;)V
.end method

.method public abstract setEnableFilterConfig(Z)V
.end method

.method public abstract setEnableHistory(Z)V
.end method

.method public abstract setEnableNormalFilter(Z)V
.end method

.method public abstract setEnableOnlineFilter(Z)V
.end method

.method public abstract setFilterGroup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFilterTableCellLayoutId(I)V
.end method

.method public abstract setGroupFilterCellWidth(I)V
.end method

.method public abstract setGroupTableCellLayoutId(I)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setOnlineFragmentClazz(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setRenderFilterThumb(Z)V
.end method

.method public abstract setSaveLastFilter(Z)V
.end method

.method public abstract setThumbImage(Landroid/graphics/Bitmap;)V
.end method
