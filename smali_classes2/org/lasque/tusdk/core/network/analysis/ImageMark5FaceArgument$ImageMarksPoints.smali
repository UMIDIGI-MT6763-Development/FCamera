.class public Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMarksPoints"
.end annotation


# instance fields
.field public x:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "x"
    .end annotation
.end field

.field public y:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "y"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method
