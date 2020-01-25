.class public Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;
    }
.end annotation


# instance fields
.field public isHeader:Z

.field public row:I

.field public section:I

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->section:I

    iput p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    iput p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    iget p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->isHeader:Z

    :cond_0
    return-void
.end method
