.class Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterPicture;-><init>(Ljava/nio/ByteBuffer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/ByteBuffer;

.field final synthetic d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;IILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    iput p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->a:I

    iput p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->b:I

    iput-object p4, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-static {v2}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->d(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->b(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->e(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->f(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->isShouldSmoothlyScaleOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2801

    const/16 v2, 0x2703

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_0
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    iget v6, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->a:I

    iget v7, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->b:I

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    iget-object v11, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->c:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;->d:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->isShouldSmoothlyScaleOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
