.class public Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMarks"
.end annotation


# instance fields
.field public eye_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "eye_left"
    .end annotation
.end field

.field public eye_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "eye_right"
    .end annotation
.end field

.field public mouth_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "mouth_left"
    .end annotation
.end field

.field public mouth_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "mouth_right"
    .end annotation
.end field

.field public nose:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "nose"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method
