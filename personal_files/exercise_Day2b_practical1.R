# North
# AAA
# AAT
# AGT
# CAT

# South
#AGT
#AGT
#AGT
#AAT


# Because the ancestral allele is AGT, we can compute
# the alleles as a matrix such as:
loci <- "000
000
000
010
011
010
000
110"
# Now we transform it into matrix using claude
lines <- strsplit(loci, "\n")[[1]]
chars <- strsplit(lines, "")
alleles_china <- do.call(rbind, chars)
alleles_china <- apply(alleles_china, c(1,2), as.numeric)

# Now for population South:
chrom=4
allele1=sum(alleles_china[0:4,1])/chrom
allele2=sum(alleles_china[0:4,2])/chrom
allele3=sum(alleles_china[0:4,3])/chrom

print(paste0("First loci South pop:", allele1))
print(paste0("Second loci South pop:", allele2))
print(paste0("Third loci South pop:", allele3))
# Calculate the site frequency spectrum
tbl <- as.data.frame(table(alleles_freq))
print("SFS South:")
print(tbl)

# Now for population North:
chrom=4
allele1=sum(alleles_china[5:8,1])/chrom
allele2=sum(alleles_china[5:8,2])/chrom
allele3=sum(alleles_china[5:8,3])/chrom

print(paste0("First loci North pop:", allele1))
print(paste0("Second loci North pop:", allele2))
print(paste0("Third loci North pop:", allele3))

# Calculate the site frequency spectrum
tbl <- as.data.frame(table(alleles_freq))
print("SFS North:")
print(tbl)

# We have 8 chromosomes per loci
chrom=8

# The derived allele frequencies of each of the three loci are
allele1=sum(alleles_china[,1])/chrom
allele2=sum(alleles_china[,2])/chrom
allele3=sum(alleles_china[,3])/chrom

print(paste0("First loci:", allele1))
print(paste0("Second loci:", allele2))
print(paste0("Third loci:", allele3))

# Calculate the site frequency spectrum
tbl <- as.data.frame(table(alleles_freq))
print("SFS ALL:")
print(tbl)

# Estimate the popilaton geentic paramter: theta=4Nemu using
# either Taima's or Watterson's estimator for both populations

# Tajimas's estimator of diversity



