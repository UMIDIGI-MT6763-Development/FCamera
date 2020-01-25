.class public Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageItems"
.end annotation


# instance fields
.field public marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "marks"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method
