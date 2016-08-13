.class public final Lcom/sonymobile/home/DisplayData;
.super Ljava/lang/Object;
.source "DisplayData.java"


# static fields
.field private static sBottomOffset:I

.field private static final sDisplaySizeExcludingBars:Landroid/graphics/Point;

.field private static final sDisplaySizeIncludingBars:Landroid/graphics/Point;

.field private static sNavigationBarSize:I

.field private static sRightOffset:I

.field private static sStatusBarSize:I

.field private static sTopOffset:I

.field private static sXoffset:I

.field private static sYoffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput v1, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    .line 27
    sput v1, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    .line 36
    sput v1, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 42
    sput v1, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 48
    sput v1, Lcom/sonymobile/home/DisplayData;->sRightOffset:I

    .line 55
    sput v1, Lcom/sonymobile/home/DisplayData;->sXoffset:I

    .line 58
    sput v1, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    return-void
.end method

.method private static calculateXoffset(II)I
    .locals 1
    .param p0, "offsetToTheRightNotCovered"    # I
    .param p1, "offsetToTheLeftNotCovered"    # I

    .prologue
    .line 328
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static calculateYoffset(II)I
    .locals 1
    .param p0, "offsetInTheBottomNotCovered"    # I
    .param p1, "offsetInTheTopNotCovered"    # I

    .prologue
    .line 345
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static equalsWithinTolerance(II)Z
    .locals 1
    .param p0, "size1"    # I
    .param p1, "size2"    # I

    .prologue
    .line 356
    add-int/lit8 v0, p1, -0x3

    if-gt v0, p0, :cond_0

    add-int/lit8 v0, p1, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBottomOffset()I
    .locals 1

    .prologue
    .line 262
    sget v0, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    return v0
.end method

.method public static getRightOffset()I
    .locals 1

    .prologue
    .line 272
    sget v0, Lcom/sonymobile/home/DisplayData;->sRightOffset:I

    return v0
.end method

.method public static getTopOffset()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    return v0
.end method

.method public static getXoffset()I
    .locals 1

    .prologue
    .line 287
    sget v0, Lcom/sonymobile/home/DisplayData;->sXoffset:I

    return v0
.end method

.method public static getYoffset()I
    .locals 1

    .prologue
    .line 302
    sget v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    return v0
.end method

.method public static updateConfiguration(Landroid/content/res/Resources;Landroid/view/Display;)V
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 71
    sget-object v5, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 72
    sget-object v5, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 74
    sget-object v5, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sget-object v6, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_2

    move v1, v4

    .line 75
    .local v1, "isPortrait":Z
    :goto_0
    if-nez v1, :cond_0

    sget-object v5, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sget-object v6, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 78
    .local v0, "isNavBarLocatedInTheBottom":Z
    :cond_1
    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "statusBarResId":I
    if-lez v3, :cond_3

    .line 80
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    .line 87
    :goto_1
    if-eqz v0, :cond_5

    .line 88
    if-eqz v1, :cond_4

    .line 89
    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "navBarResId":I
    :goto_2
    if-lez v2, :cond_6

    .line 100
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    .line 105
    :goto_3
    return-void

    .end local v0    # "isNavBarLocatedInTheBottom":Z
    .end local v1    # "isPortrait":Z
    .end local v2    # "navBarResId":I
    .end local v3    # "statusBarResId":I
    :cond_2
    move v1, v0

    .line 74
    goto :goto_0

    .line 82
    .restart local v0    # "isNavBarLocatedInTheBottom":Z
    .restart local v1    # "isPortrait":Z
    .restart local v3    # "statusBarResId":I
    :cond_3
    const v4, 0x7f0b00d2

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    goto :goto_1

    .line 91
    :cond_4
    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "navBarResId":I
    goto :goto_2

    .line 96
    .end local v2    # "navBarResId":I
    :cond_5
    const-string v4, "navigation_bar_width"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "navBarResId":I
    goto :goto_2

    .line 102
    :cond_6
    const v4, 0x7f0b001d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    goto :goto_3
.end method

.method public static updateOffsets(II)V
    .locals 11
    .param p0, "sceneWidth"    # I
    .param p1, "sceneHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 120
    if-ge p0, p1, :cond_1

    move v3, v7

    .line 121
    .local v3, "isPortrait":Z
    :goto_0
    if-nez v3, :cond_0

    sget-object v9, Lcom/sonymobile/home/DisplayData;->sDisplaySizeExcludingBars:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    if-lt v9, v10, :cond_2

    :cond_0
    move v2, v7

    .line 124
    .local v2, "isNavBarLocatedInTheBottom":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 129
    sget-object v7, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v0, v7, p1

    .line 133
    .local v0, "heightNotCoveredByScene":I
    sget v7, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    invoke-static {v0, v7}, Lcom/sonymobile/home/DisplayData;->equalsWithinTolerance(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "isBottomDisplayAreaCoveredByScene":Z
    const/4 v5, 0x1

    .line 150
    .local v5, "isTopDisplayAreaCoveredByScene":Z
    :goto_2
    invoke-static {v1, v5}, Lcom/sonymobile/home/DisplayData;->updateOffsetsBasedOnBottomLocatedNavBar(ZZ)V

    .line 166
    .end local v1    # "isBottomDisplayAreaCoveredByScene":Z
    :goto_3
    return-void

    .end local v0    # "heightNotCoveredByScene":I
    .end local v2    # "isNavBarLocatedInTheBottom":Z
    .end local v3    # "isPortrait":Z
    .end local v5    # "isTopDisplayAreaCoveredByScene":Z
    :cond_1
    move v3, v8

    .line 120
    goto :goto_0

    .restart local v3    # "isPortrait":Z
    :cond_2
    move v2, v8

    .line 121
    goto :goto_1

    .line 139
    .restart local v0    # "heightNotCoveredByScene":I
    .restart local v2    # "isNavBarLocatedInTheBottom":Z
    :cond_3
    sget v7, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    sget v8, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    add-int/2addr v7, v8

    invoke-static {v0, v7}, Lcom/sonymobile/home/DisplayData;->equalsWithinTolerance(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "isBottomDisplayAreaCoveredByScene":Z
    const/4 v5, 0x0

    .restart local v5    # "isTopDisplayAreaCoveredByScene":Z
    goto :goto_2

    .line 146
    .end local v1    # "isBottomDisplayAreaCoveredByScene":Z
    .end local v5    # "isTopDisplayAreaCoveredByScene":Z
    :cond_4
    const/4 v1, 0x1

    .line 147
    .restart local v1    # "isBottomDisplayAreaCoveredByScene":Z
    const/4 v5, 0x1

    .restart local v5    # "isTopDisplayAreaCoveredByScene":Z
    goto :goto_2

    .line 156
    .end local v0    # "heightNotCoveredByScene":I
    .end local v1    # "isBottomDisplayAreaCoveredByScene":Z
    .end local v5    # "isTopDisplayAreaCoveredByScene":Z
    :cond_5
    sget-object v9, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int v6, v9, p0

    .line 157
    .local v6, "widthNotCoveredByScene":I
    sget-object v9, Lcom/sonymobile/home/DisplayData;->sDisplaySizeIncludingBars:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int v0, v9, p1

    .line 158
    .restart local v0    # "heightNotCoveredByScene":I
    sget v9, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    invoke-static {v0, v9}, Lcom/sonymobile/home/DisplayData;->equalsWithinTolerance(II)Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 160
    .restart local v5    # "isTopDisplayAreaCoveredByScene":Z
    :goto_4
    sget v9, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    invoke-static {v6, v9}, Lcom/sonymobile/home/DisplayData;->equalsWithinTolerance(II)Z

    move-result v9

    if-nez v9, :cond_7

    move v4, v7

    .line 163
    .local v4, "isRightDisplayAreaCoveredByScene":Z
    :goto_5
    invoke-static {v4, v5}, Lcom/sonymobile/home/DisplayData;->updateOffsetsBasedOnRightLocatedNavBar(ZZ)V

    goto :goto_3

    .end local v4    # "isRightDisplayAreaCoveredByScene":Z
    .end local v5    # "isTopDisplayAreaCoveredByScene":Z
    :cond_6
    move v5, v8

    .line 158
    goto :goto_4

    .restart local v5    # "isTopDisplayAreaCoveredByScene":Z
    :cond_7
    move v4, v8

    .line 160
    goto :goto_5
.end method

.method private static updateOffsetsBasedOnBottomLocatedNavBar(ZZ)V
    .locals 3
    .param p0, "isBottomDisplayAreaCoveredByScene"    # Z
    .param p1, "isTopDisplayAreaCoveredByScene"    # Z

    .prologue
    const/4 v2, 0x0

    .line 179
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 185
    sput v2, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 191
    sget v0, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    sput v0, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 197
    sget v0, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    invoke-static {v0, v2}, Lcom/sonymobile/home/DisplayData;->calculateYoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    .line 210
    :goto_0
    sput v2, Lcom/sonymobile/home/DisplayData;->sRightOffset:I

    .line 211
    sput v2, Lcom/sonymobile/home/DisplayData;->sXoffset:I

    .line 212
    return-void

    .line 199
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 200
    sput v2, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 201
    sput v2, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 202
    sget v0, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    sget v1, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    invoke-static {v0, v1}, Lcom/sonymobile/home/DisplayData;->calculateYoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    goto :goto_0

    .line 205
    :cond_1
    sget v0, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    sput v0, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 206
    sget v0, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    sput v0, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 207
    invoke-static {v2, v2}, Lcom/sonymobile/home/DisplayData;->calculateYoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    goto :goto_0
.end method

.method private static updateOffsetsBasedOnRightLocatedNavBar(ZZ)V
    .locals 2
    .param p0, "isRightDisplayAreaCoveredByScene"    # Z
    .param p1, "isTopDisplayAreaCoveredByScene"    # Z

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_0

    .line 226
    sput v1, Lcom/sonymobile/home/DisplayData;->sRightOffset:I

    .line 227
    sget v0, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    invoke-static {v0, v1}, Lcom/sonymobile/home/DisplayData;->calculateXoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sXoffset:I

    .line 234
    :goto_0
    if-nez p1, :cond_1

    .line 235
    sput v1, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 236
    sput v1, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 237
    sget v0, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    invoke-static {v1, v0}, Lcom/sonymobile/home/DisplayData;->calculateYoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    .line 244
    :goto_1
    return-void

    .line 230
    :cond_0
    sget v0, Lcom/sonymobile/home/DisplayData;->sNavigationBarSize:I

    sput v0, Lcom/sonymobile/home/DisplayData;->sRightOffset:I

    .line 231
    invoke-static {v1, v1}, Lcom/sonymobile/home/DisplayData;->calculateXoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sXoffset:I

    goto :goto_0

    .line 240
    :cond_1
    sput v1, Lcom/sonymobile/home/DisplayData;->sBottomOffset:I

    .line 241
    sget v0, Lcom/sonymobile/home/DisplayData;->sStatusBarSize:I

    sput v0, Lcom/sonymobile/home/DisplayData;->sTopOffset:I

    .line 242
    invoke-static {v1, v1}, Lcom/sonymobile/home/DisplayData;->calculateYoffset(II)I

    move-result v0

    sput v0, Lcom/sonymobile/home/DisplayData;->sYoffset:I

    goto :goto_1
.end method
