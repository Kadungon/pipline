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

    createPageFile(path, 'Page', depth);
    createFile(path, 'Layout', 'tsx');
    createFile(path, `fetch${dynamicRouteNames[depth - 1]}.tsx`);
  }
}

// ... (Implementation of createFolderPath, createFolder, and createFile functions remains the same)

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
