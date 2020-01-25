.class public interface abstract Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSdkDataSource"
.end annotation


# virtual methods
.method public abstract count()I
.end method

.method public abstract getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
.end method

.method public abstract getIndexPaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;
.end method

.method public abstract onViewBinded(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/View;)V
.end method

.method public abstract rowCount(I)I
.end method

.method public abstract sectionCount()I
.end method

.method public abstract viewTypes()I
.end method
