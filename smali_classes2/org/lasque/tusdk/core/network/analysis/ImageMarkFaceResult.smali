.class public Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "count"
    .end annotation
.end field

.field public items:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument<",
            "Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "items"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method
