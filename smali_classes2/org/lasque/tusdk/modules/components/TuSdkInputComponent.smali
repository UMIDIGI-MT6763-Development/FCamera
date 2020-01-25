.class public abstract Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;
.super Lorg/lasque/tusdk/modules/components/TuSdkComponent;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-object v0
.end method

.method public getTempFilePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->a:Ljava/io/File;

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setImageSqlInfo(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->b:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-object p0
.end method

.method public setTempFilePath(Ljava/io/File;)Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;->a:Ljava/io/File;

    return-object p0
.end method
