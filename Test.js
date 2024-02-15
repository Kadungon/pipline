import * as fs from 'fs';
import * as readline from 'readline';

async function main() {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const routesDepth = Number(await new Promise((resolve) => {
    rl.question('What is the maximum depth of your dynamic routes? ', (answer) => {
      resolve(answer);
    });
  }));

  const dynamicRouteNames = [];
  for (let i = 1; i <= routesDepth; i++) {
    const routeName = await new Promise((resolve) => {
      rl.question(`Enter name for dynamic route ${i}: `, (answer) => {
        resolve(answer);
      });
    });
    dynamicRouteNames.push(routeName);
  }

  rl.close();

  // Create parent root files
  createParentRootFiles();

  // Create dynamic route folders and files
  for (let depth = 1; depth <= routesDepth; depth++) {
    const path = createFolderPath(depth);
    createFolder(path);

    createFile(path, 'Page', 'tsx');
    createFile(path, 'Layout', 'tsx');
    createFile(path, `fetch${dynamicRouteNames[depth - 1]}.tsx`);
  }

  console.log('Folder structure created successfully!');
}

function createFolderPath(depth: number): string {
  let path = '';
  for (let i = 1; i <= depth; i++) {
    path += `/${i}`;
  }
  return path;
}

function createFolder(path: string) {
  if (!fs.existsSync(path)) {
    fs.mkdirSync(path, { recursive: true });
  }
}

function createFile(path: string, fileName: string, extension: string) {
  const filePath = `${path}/${fileName}.${extension}`;
  if (!fs.existsSync(filePath)) {
    fs.writeFileSync(filePath, '', 'utf8');
  } else {
    console.warn(`File already exists: ${filePath}`);
  }
}

function createParentRootFiles() {
  createFile('', 'States', 'index.ts');
  createFile('', 'Query', 'index.ts');
  createFile('', 'filter.tsx');
  createFile('', `fetch${dynamicRouteNames[0]}.tsx`);
  createFile('Component', 'page.tsx');
  createFile('Component', 'Layout.tsx');
  createFile('Component', 'Loader.tsx');
  createFile('Component', 'Error.tsx');
}

main();
  
