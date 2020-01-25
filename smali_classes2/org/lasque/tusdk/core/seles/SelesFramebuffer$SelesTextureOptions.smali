.class public Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelesTextureOptions"
.end annotation


# instance fields
.field public format:I

.field public internalFormat:I

.field public magFilter:I

.field public minFilter:I

.field public type:I

.field public wrapS:I

.field public wrapT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2601

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->minFilter:I

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->magFilter:I

    const v0, 0x812f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapS:I

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapT:I

    const/16 v0, 0x1908

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->internalFormat:I

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->format:I

    const/16 v0, 0x1401

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->type:I

    return-void
.end method
